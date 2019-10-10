.class public Lmiui/cloud/CloudRequestUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String; = "/api/user/device/setting"

.field public static final n:Ljava/lang/String;

.field private static final o:Ljava/lang/String; = "CloudRequestUtils"

.field private static p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->a:Z

    if-eqz v0, :cond_7

    const-string v0, "http://api.micloud.preview.n.xiaomi.net"

    goto :goto_9

    :cond_7
    const-string v0, "http://fileapi.micloud.xiaomi.net"

    :goto_9
    sput-object v0, Lmiui/cloud/CloudRequestUtils;->a:Ljava/lang/String;

    .line 34
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->a:Z

    if-eqz v0, :cond_12

    const-string v0, "http://micloud.preview.n.xiaomi.net"

    goto :goto_14

    :cond_12
    const-string v0, "http://contactapi.micloud.xiaomi.net"

    :goto_14
    sput-object v0, Lmiui/cloud/CloudRequestUtils;->b:Ljava/lang/String;

    .line 37
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->a:Z

    if-eqz v0, :cond_1d

    const-string v0, "http://micardapi.micloud.preview.n.xiaomi.net"

    goto :goto_1f

    :cond_1d
    const-string v0, "http://micardapi.micloud.xiaomi.net"

    :goto_1f
    sput-object v0, Lmiui/cloud/CloudRequestUtils;->c:Ljava/lang/String;

    .line 40
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->a:Z

    if-eqz v0, :cond_28

    const-string v0, "http://micloud.preview.n.xiaomi.net"

    goto :goto_2a

    :cond_28
    const-string v0, "http://smsapi.micloud.xiaomi.net"

    :goto_2a
    sput-object v0, Lmiui/cloud/CloudRequestUtils;->d:Ljava/lang/String;

    .line 43
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->a:Z

    if-eqz v0, :cond_33

    const-string v0, "http://micloud.preview.n.xiaomi.net"

    goto :goto_35

    :cond_33
    const-string v0, "http://galleryapi.micloud.xiaomi.net"

    :goto_35
    sput-object v0, Lmiui/cloud/CloudRequestUtils;->e:Ljava/lang/String;

    .line 46
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->a:Z

    if-eqz v0, :cond_3e

    const-string v0, "http://micloud.preview.n.xiaomi.net"

    goto :goto_40

    :cond_3e
    const-string v0, "http://findapi.micloud.xiaomi.net"

    :goto_40
    sput-object v0, Lmiui/cloud/CloudRequestUtils;->f:Ljava/lang/String;

    .line 49
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->a:Z

    if-eqz v0, :cond_49

    const-string v0, "http://micloud.preview.n.xiaomi.net"

    goto :goto_4b

    :cond_49
    const-string v0, "http://wifiapi.micloud.xiaomi.net"

    :goto_4b
    sput-object v0, Lmiui/cloud/CloudRequestUtils;->g:Ljava/lang/String;

    .line 52
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->a:Z

    if-eqz v0, :cond_54

    const-string v0, "http://micloud.preview.n.xiaomi.net"

    goto :goto_56

    :cond_54
    const-string v0, "http://noteapi.micloud.xiaomi.net"

    :goto_56
    sput-object v0, Lmiui/cloud/CloudRequestUtils;->h:Ljava/lang/String;

    .line 55
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->a:Z

    if-eqz v0, :cond_5f

    const-string v0, "http://micloud.preview.n.xiaomi.net"

    goto :goto_61

    :cond_5f
    const-string v0, "http://musicapi.micloud.xiaomi.net"

    :goto_61
    sput-object v0, Lmiui/cloud/CloudRequestUtils;->i:Ljava/lang/String;

    .line 63
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->a:Z

    if-eqz v0, :cond_6a

    const-string v0, "http://micloud.preview.n.xiaomi.net"

    goto :goto_6c

    :cond_6a
    const-string v0, "http://phonecallapi.micloud.xiaomi.net"

    :goto_6c
    sput-object v0, Lmiui/cloud/CloudRequestUtils;->j:Ljava/lang/String;

    .line 67
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->a:Z

    if-eqz v0, :cond_75

    const-string v0, "http://micloud.preview.n.xiaomi.net"

    goto :goto_77

    :cond_75
    const-string v0, "http://wifisharingapi.micloud.xiaomi.net"

    :goto_77
    sput-object v0, Lmiui/cloud/CloudRequestUtils;->k:Ljava/lang/String;

    .line 74
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->a:Z

    if-eqz v0, :cond_80

    const-string v0, "http://api.device.preview.n.xiaomi.net"

    goto :goto_82

    :cond_80
    const-string v0, "http://api.device.xiaomi.net"

    :goto_82
    sput-object v0, Lmiui/cloud/CloudRequestUtils;->l:Ljava/lang/String;

    .line 84
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->a:Z

    if-eqz v0, :cond_8b

    const-string v0, "http://statusapi.micloud.preview.n.xiaomi.net"

    goto :goto_8d

    :cond_8b
    const-string v0, "http://statusapi.micloud.xiaomi.net"

    :goto_8d
    sput-object v0, Lmiui/cloud/CloudRequestUtils;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 3

    .line 92
    sget-object v0, Lmiui/cloud/CloudRequestUtils;->p:Ljava/lang/String;

    if-nez v0, :cond_c4

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ro.product.mod_device"

    .line 97
    invoke-static {v1}, Lmiui/cloud/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 101
    :cond_2f
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_34
    const-string v1, "; MIUI/"

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " E/"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ro.miui.ui.version.name"

    .line 106
    invoke-static {v1}, Lmiui/cloud/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " B/"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    sget-boolean v1, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v1, :cond_5b

    const-string v1, "A"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_74

    .line 113
    :cond_5b
    sget-boolean v1, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v1, :cond_65

    const-string v1, "D"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_74

    .line 115
    :cond_65
    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v1, :cond_6f

    const-string v1, "S"

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_74

    :cond_6f
    const-string v1, "null"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_74
    const-string v1, " L/"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9d

    .line 126
    invoke-static {v2}, Lmiui/cloud/CloudRequestUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a2

    const-string v2, "-"

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a2

    :cond_9d
    const-string v1, "EN"

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a2
    :goto_a2
    const-string v1, " LO/"

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b9

    .line 141
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_be

    :cond_b9
    const-string v1, "null"

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :goto_be
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/cloud/CloudRequestUtils;->p:Ljava/lang/String;

    .line 148
    :cond_c4
    sget-object v0, Lmiui/cloud/CloudRequestUtils;->p:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "iw"

    .line 159
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "he"

    return-object p0

    :cond_f
    const-string v0, "in"

    .line 162
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p0, "id"

    return-object p0

    :cond_1a
    const-string v0, "ji"

    .line 165
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string p0, "yi"

    return-object p0

    :cond_25
    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "connectivity"

    .line 173
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 175
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 176
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public static b(Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 189
    invoke-static {p0}, Lmiui/cloud/CloudRequestUtils;->e(Landroid/content/Context;)V

    .line 190
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 192
    new-instance v1, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;-><init>(Landroid/content/Context;Lmiui/cloud/CloudRequestUtils$1;)V

    .line 194
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    :try_start_13
    invoke-virtual {v1}, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;->a()V
    :try_end_16
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_13 .. :try_end_16} :catch_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1a

    .line 200
    :catch_16
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1f

    :catchall_1a
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v0

    :goto_1f
    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .line 205
    invoke-static {p0}, Lmiui/cloud/CloudRequestUtils;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .line 209
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 210
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/content/Context;)V
    .registers 2

    .line 180
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    if-eq v0, p0, :cond_d

    goto :goto_15

    .line 182
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "calling this from your main thread can lead to deadlock"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_15
    return-void
.end method
