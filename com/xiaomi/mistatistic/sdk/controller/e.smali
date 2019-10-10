.class public Lcom/xiaomi/mistatistic/sdk/controller/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/e$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->a:Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    .line 29
    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->d:Ljava/lang/String;

    .line 30
    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 67
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 68
    sget-object p0, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    return-object p0

    .line 70
    :cond_7
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 17
    sput-object p0, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Context;J)V
    .registers 4

    const-string v0, "anonymous_ei"

    .line 174
    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "imei_md5"

    const-string v1, ""

    .line 135
    invoke-static {p0, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    .line 141
    :cond_f
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string p0, ""

    goto :goto_2c

    .line 146
    :cond_1c
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "imei_md5"

    .line 148
    invoke-static {p0, v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    move-object p0, v0

    :goto_2c
    return-object p0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    const-class v0, Lcom/xiaomi/mistatistic/sdk/controller/e;

    monitor-enter v0

    .line 156
    :try_start_3
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/e;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 157
    sget-object p0, Lcom/xiaomi/mistatistic/sdk/controller/e;->e:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_58

    monitor-exit v0

    return-object p0

    .line 159
    :cond_f
    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "anonymous_id"

    const-string v4, ""

    .line 160
    invoke-static {p0, v3, v4}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "aigt"

    const-wide/16 v5, 0x0

    .line 161
    invoke-static {p0, v4, v5, v6}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "anonymous_ei"

    const-wide v7, 0x1cf7c5800L

    .line 162
    invoke-static {p0, v6, v7, v8}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    .line 163
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3e

    sub-long v4, v1, v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3b

    goto :goto_3e

    .line 167
    :cond_3b
    sput-object v3, Lcom/xiaomi/mistatistic/sdk/controller/e;->e:Ljava/lang/String;

    goto :goto_4f

    .line 164
    :cond_3e
    :goto_3e
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/xiaomi/mistatistic/sdk/controller/e;->e:Ljava/lang/String;

    const-string v3, "anonymous_id"

    .line 165
    sget-object v4, Lcom/xiaomi/mistatistic/sdk/controller/e;->e:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4f
    const-string v3, "aigt"

    .line 169
    invoke-static {p0, v3, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 170
    sget-object p0, Lcom/xiaomi/mistatistic/sdk/controller/e;->e:Ljava/lang/String;
    :try_end_56
    .catchall {:try_start_f .. :try_end_56} :catchall_58

    monitor-exit v0

    return-object p0

    :catchall_58
    move-exception p0

    .line 155
    monitor-exit v0

    throw p0
.end method

.method static synthetic d(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 17
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 75
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 76
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_b
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_7f

    if-eqz v1, :cond_7d

    .line 79
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "device_id"

    const-string v3, ""

    .line 81
    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 83
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/d;->f()Z

    move-result v2

    if-nez v2, :cond_57

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->c()Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_57

    .line 91
    :cond_32
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/r;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a()Ljava/lang/String;

    move-result-object v3

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    goto :goto_6a

    .line 84
    :cond_57
    :goto_57
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_64

    .line 86
    sput-object v2, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    goto :goto_6a

    .line 88
    :cond_64
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    :goto_6a
    const-string p0, "device_id"

    .line 95
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    invoke-static {v1, p0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    .line 97
    :cond_72
    sput-object v2, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_74} :catch_75
    .catchall {:try_start_13 .. :try_end_74} :catchall_7f

    goto :goto_7d

    :catch_75
    move-exception p0

    :try_start_76
    const-string v1, "DIH"

    const-string v2, "getDeviceId exception"

    .line 100
    invoke-static {v1, v2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    :cond_7d
    :goto_7d
    monitor-exit v0

    goto :goto_82

    :catchall_7f
    move-exception p0

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_76 .. :try_end_81} :catchall_7f

    throw p0

    .line 106
    :cond_82
    :goto_82
    sget-object p0, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 111
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 112
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_b
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/e;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_44

    if-eqz v1, :cond_42

    .line 115
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "phone"

    .line 116
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 117
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/mistatistic/sdk/controller/e;->d:Ljava/lang/String;

    goto :goto_42

    :cond_32
    const-string p0, "DIH"

    const-string v1, "cannot get READ_PHONE_STATE permission"

    .line 119
    invoke-static {p0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_39} :catch_3a
    .catchall {:try_start_13 .. :try_end_39} :catchall_44

    goto :goto_42

    :catch_3a
    move-exception p0

    :try_start_3b
    const-string v1, "DIH"

    const-string v2, "getImei exception:"

    .line 122
    invoke-static {v1, v2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    :cond_42
    :goto_42
    monitor-exit v0

    goto :goto_47

    :catchall_44
    move-exception p0

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_44

    throw p0

    .line 128
    :cond_47
    :goto_47
    sget-object p0, Lcom/xiaomi/mistatistic/sdk/controller/e;->d:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_56

    const-string p0, "DIH"

    const-string v0, "Imei is empty"

    .line 129
    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_56
    sget-object p0, Lcom/xiaomi/mistatistic/sdk/controller/e;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    .line 33
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 34
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    return-object v0

    .line 37
    :cond_7
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/e$a;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/e$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    const/4 v0, 0x0

    return-object v0
.end method
