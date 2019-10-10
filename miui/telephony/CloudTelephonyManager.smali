.class public Lmiui/telephony/CloudTelephonyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/CloudTelephonyManager$TypedSimId;,
        Lmiui/telephony/CloudTelephonyManager$AsyncFuture;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String; = "CloudTelephonyManager"

.field private static volatile c:Ljava/lang/String; = null

.field private static final d:J = 0x493e0L

.field private static final e:J = 0xea60L

.field private static final f:J = 0x927c0L

.field private static final g:J = 0xf4240L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    invoke-static {}, Lmiui/cloud/telephony/SubscriptionManager;->getSLOT_KEY()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/CloudTelephonyManager;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 35
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 36
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/cloud/telephony/TelephonyManager;->getMiuiDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 38
    :cond_f
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/net/ConnectivityHelper;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 2

    .line 96
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    move-result-object p0

    .line 97
    invoke-static {p0, p1}, Lmiui/telephony/CloudTelephonyManager;->b(Lmiui/cloud/telephony/TelephonyManager;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 99
    invoke-virtual {p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    const-string v0, "CloudTelephonyManager"

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockingGetDeviceId is called by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v0, Lmiui/telephony/CloudTelephonyManager;->c:Ljava/lang/String;

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    return-object v0

    .line 69
    :cond_2b
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 70
    invoke-static {p0, p1, p2}, Lmiui/telephony/CloudTelephonyManager;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {p0, p1}, Lmiui/cloud/util/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    sput-object p1, Lmiui/telephony/CloudTelephonyManager;->c:Ljava/lang/String;

    return-object p1

    .line 76
    :cond_3b
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->c(Landroid/content/Context;)V

    .line 77
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lmiui/cloud/util/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 79
    sput-object v0, Lmiui/telephony/CloudTelephonyManager;->c:Ljava/lang/String;

    return-object v0

    .line 83
    :cond_4f
    invoke-static {p0, p1, p2}, Lmiui/telephony/CloudTelephonyManager;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-static {p0, p1}, Lmiui/cloud/util/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    sput-object p1, Lmiui/telephony/CloudTelephonyManager;->c:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Landroid/content/Context;IJ)Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 297
    invoke-static {p0, p1, p2, p3}, Lmiui/telephony/CloudTelephonyManager;->b(Landroid/content/Context;IJ)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    .line 299
    :cond_7
    new-instance p0, Lmiui/telephony/exception/IllegalDeviceException;

    const-string p1, "failed to get sim id"

    invoke-direct {p0, p1}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lmiui/cloud/telephony/TelephonyManager;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    .registers 2

    .line 23
    invoke-static {p0, p1}, Lmiui/telephony/CloudTelephonyManager;->b(Lmiui/cloud/telephony/TelephonyManager;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    move-result-object p0

    return-object p0
.end method

.method public static a()Z
    .registers 1

    .line 132
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/cloud/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public static b()I
    .registers 1

    .line 136
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/cloud/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;J)I
    .registers 3

    .line 150
    invoke-static {}, Lmiui/cloud/telephony/SubscriptionManager;->getDefault()Lmiui/cloud/telephony/SubscriptionManager;

    move-result-object p0

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-wide/32 v0, 0x493e0

    goto :goto_d

    :cond_a
    const-wide/32 v0, 0xea60

    .line 50
    :goto_d
    invoke-static {p0, v0, v1}, Lmiui/telephony/CloudTelephonyManager;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;I)Ljava/lang/String;
    .registers 2

    .line 109
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    move-result-object p0

    .line 110
    invoke-static {p0, p1}, Lmiui/telephony/CloudTelephonyManager;->c(Lmiui/cloud/telephony/TelephonyManager;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 112
    invoke-virtual {p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Landroid/content/Context;IJ)Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 312
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->c(Landroid/content/Context;)V

    .line 313
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->d(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6e

    .line 314
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    move-result-object v0

    .line 315
    new-instance v2, Lmiui/telephony/CloudTelephonyManager$AsyncFuture;

    invoke-direct {v2}, Lmiui/telephony/CloudTelephonyManager$AsyncFuture;-><init>()V

    .line 316
    new-instance v3, Lmiui/telephony/CloudTelephonyManager$1;

    invoke-direct {v3, v2, v0, p1}, Lmiui/telephony/CloudTelephonyManager$1;-><init>(Lmiui/telephony/CloudTelephonyManager$AsyncFuture;Lmiui/cloud/telephony/TelephonyManager;I)V

    .line 325
    new-instance v4, Landroid/content/IntentFilter;

    .line 326
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getTelephonyIntents_ACTION_SIM_STATE_CHANGED()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 328
    invoke-static {v0, p1}, Lmiui/telephony/CloudTelephonyManager;->b(Lmiui/cloud/telephony/TelephonyManager;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 330
    invoke-virtual {v2, p1}, Lmiui/telephony/CloudTelephonyManager$AsyncFuture;->a(Ljava/lang/Object;)V

    :cond_2d
    const-wide/16 v4, 0x0

    cmp-long p1, p2, v4

    if-gez p1, :cond_41

    .line 334
    :try_start_33
    invoke-virtual {v2}, Lmiui/telephony/CloudTelephonyManager$AsyncFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_39} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_39} :catch_3f
    .catchall {:try_start_33 .. :try_end_39} :catchall_3d

    .line 349
    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-object p1

    :catchall_3d
    move-exception p1

    goto :goto_6a

    :catch_3f
    move-exception p1

    goto :goto_4d

    .line 336
    :cond_41
    :try_start_41
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p2, p3, p1}, Lmiui/telephony/CloudTelephonyManager$AsyncFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_49} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_49} :catch_3f
    .catchall {:try_start_41 .. :try_end_49} :catchall_3d

    .line 349
    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-object p1

    .line 343
    :goto_4d
    :try_start_4d
    instance-of p2, p1, Ljava/util/concurrent/TimeoutException;

    if-nez p2, :cond_5c

    const-string p2, "CloudTelephonyManager"

    const-string p3, "exception when get sim id"

    .line 346
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_4d .. :try_end_58} :catchall_3d

    .line 349
    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-object v1

    .line 344
    :cond_5c
    :try_start_5c
    check-cast p1, Ljava/util/concurrent/TimeoutException;

    throw p1

    .line 340
    :catch_5f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_3d

    .line 349
    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-object v1

    :goto_6a
    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw p1

    :cond_6e
    return-object v1
.end method

.method private static b(Lmiui/cloud/telephony/TelephonyManager;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    .registers 6

    .line 253
    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getPhoneTypeForSlot(I)I

    move-result v0

    const-string v1, "CloudTelephonyManager"

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getPHONE_TYPE_CDMA()I

    move-result v1

    if-ne v0, v1, :cond_31

    .line 256
    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getSimSerialNumberForSlot(I)Ljava/lang/String;

    move-result-object p0

    .line 257
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_48

    .line 258
    new-instance p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 260
    :cond_31
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getPHONE_TYPE_GSM()I

    move-result v1

    if-ne v0, v1, :cond_48

    .line 261
    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getSubscriberIdForSlot(I)Ljava/lang/String;

    move-result-object p0

    .line 262
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_48

    .line 263
    new-instance p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_48
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c()I
    .registers 1

    .line 140
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/cloud/telephony/TelephonyManager;->getIccCardCount()I

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .line 127
    invoke-static {p0, p1}, Lmiui/telephony/CloudTelephonyManager;->i(Landroid/content/Context;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;J)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .line 180
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->c(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_b

    move-wide v2, v0

    goto :goto_c

    :cond_b
    move-wide v2, p1

    .line 188
    :goto_c
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    return-object v4

    :cond_17
    const/4 v5, 0x1

    :goto_18
    cmp-long v6, v2, v0

    if-lez v6, :cond_73

    const-wide/16 v6, 0x1388

    .line 195
    :try_start_1e
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_25} :catch_6b

    const/4 v4, 0x0

    sub-long/2addr v2, v6

    .line 201
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4d

    const-string p0, "CloudTelephonyManager"

    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Successfully getDeviceId after "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " retries"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_4d
    const-string v6, "CloudTelephonyManager"

    .line 206
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDeviceId is empty after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " retries"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :catch_6b
    move-exception p0

    const-string v0, "CloudTelephonyManager"

    const-string v1, "InterruptedException while sleeping:"

    .line 198
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_73
    const-string p0, "CloudTelephonyManager"

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceId is finally empty after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " seconds, return."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method private static c(Lmiui/cloud/telephony/TelephonyManager;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    .registers 6

    .line 270
    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getPhoneTypeForSubscription(I)I

    move-result v0

    const-string v1, "CloudTelephonyManager"

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getPHONE_TYPE_CDMA()I

    move-result v1

    if-ne v0, v1, :cond_31

    .line 273
    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getSimSerialNumberForSubscription(I)Ljava/lang/String;

    move-result-object p0

    .line 274
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_48

    .line 275
    new-instance p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 277
    :cond_31
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getPHONE_TYPE_GSM()I

    move-result v1

    if-ne v0, v1, :cond_48

    .line 278
    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getSubscriberIdForSubscription(I)Ljava/lang/String;

    move-result-object p0

    .line 279
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_48

    .line 280
    new-instance p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_48
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)V
    .registers 2

    .line 215
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    if-eq v0, p0, :cond_d

    goto :goto_15

    .line 217
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "calling this from your main thread can lead to deadlock"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_15
    return-void
.end method

.method public static d()I
    .registers 1

    .line 144
    invoke-static {}, Lmiui/cloud/telephony/SubscriptionManager;->getDefault()Lmiui/cloud/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/cloud/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;I)J
    .registers 2

    .line 154
    invoke-static {}, Lmiui/cloud/telephony/SubscriptionManager;->getDefault()Lmiui/cloud/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method private static d(Landroid/content/Context;J)Ljava/lang/String;
    .registers 13

    .line 223
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    add-long v4, v0, p1

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    const-wide v8, 0x7fffffffffffffffL

    if-gez p0, :cond_20

    cmp-long p0, p1, v6

    if-lez p0, :cond_20

    sub-long p0, v8, p1

    cmp-long p0, p0, v0

    if-gez p0, :cond_20

    move-wide v4, v8

    :cond_20
    :goto_20
    cmp-long p0, v0, v4

    if-gez p0, :cond_4b

    sub-long p0, v4, v0

    const-wide/32 v0, 0x927c0

    .line 232
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    .line 234
    :try_start_2d
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_39

    :catch_31
    move-exception p0

    const-string p1, "CloudTelephonyManager"

    const-string p2, "blockingWaitLooper"

    .line 236
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    :goto_39
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/net/ConnectivityHelper;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_44

    return-object p0

    .line 242
    :cond_44
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p0

    div-long v0, p0, v2

    goto :goto_20

    :cond_4b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static d(Landroid/content/Context;)Z
    .registers 2

    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony"

    .line 249
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/Context;I)Ljava/lang/String;
    .registers 2

    .line 158
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getSimOperatorNameForSlot(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;I)Ljava/lang/String;
    .registers 2

    .line 165
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getLine1NumberForSlot(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;I)Z
    .registers 2

    .line 169
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result p0

    return p0
.end method

.method public static h(Landroid/content/Context;I)Ljava/lang/String;
    .registers 2

    .line 173
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getDefault()Lmiui/cloud/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiui/cloud/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static i(Landroid/content/Context;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 289
    :try_start_2
    invoke-static {p0, p1, v0, v1}, Lmiui/telephony/CloudTelephonyManager;->a(Landroid/content/Context;IJ)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    move-result-object p0
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_6} :catch_7

    return-object p0

    .line 291
    :catch_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Never reach here. "

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
