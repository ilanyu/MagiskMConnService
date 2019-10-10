.class public Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, ""

    :try_start_2
    const-string v1, "android.os.SystemProperties"

    .line 286
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    .line 287
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    .line 288
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_22

    goto :goto_29

    :catch_22
    move-exception p0

    const-string v1, ""

    .line 290
    invoke-static {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_29
    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 278
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/k;

    const-string v1, "mistat_basic"

    invoke-direct {v0, v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/data/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    :cond_10
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "storage"

    .line 383
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 385
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getVolumeState"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 386
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "mounted"

    .line 387
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2a} :catch_2d

    if-eqz p0, :cond_33

    return v3

    :catch_2d
    move-exception p0

    const-string p1, ""

    .line 391
    invoke-static {p1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_33
    return v0
.end method

.method private b(Landroid/content/Context;)V
    .registers 5

    .line 86
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x6

    .line 87
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v1, "last_day"

    const/4 v2, 0x0

    .line 88
    invoke-static {p1, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_14

    return-void

    :cond_14
    const-string v1, "last_day"

    .line 92
    invoke-static {p1, v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 94
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/h;

    const-string v1, "mistat_basic"

    const-string v2, "mistat_dau"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    .line 97
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->d(Landroid/content/Context;)V

    const-string v0, "ro.miui.ui.version.name"

    .line 100
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ui_version"

    .line 101
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v1, "version"

    .line 105
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sd"

    .line 109
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "network"

    .line 113
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ro.carrier.name"

    .line 116
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "carrier_name"

    .line 117
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ro.miui.region"

    .line 120
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "region"

    .line 121
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/d;->f()Z

    move-result v0

    if-nez v0, :cond_9e

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->c()Z

    move-result v0

    if-nez v0, :cond_9e

    const-string v0, "imei_md5"

    .line 124
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/r;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui_imei_md5"

    .line 128
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android_id_md5"

    .line 131
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/r;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "serial_num_md5"

    .line 134
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9e
    const-string p1, "mcc"

    .line 138
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a:Z

    return-void
.end method

.method public static c()V
    .registers 4

    .line 398
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dau_time"

    const-wide/16 v2, 0x0

    .line 399
    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a(J)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 400
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/h;

    const-string v2, "mistat_basic"

    const-string v3, "mistat_dau_dummy"

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    const-string v1, "dau_time"

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_34

    :catch_2e
    move-exception v0

    const-string v1, "addDauEventWhenForeground exception: "

    .line 405
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_34
    :goto_34
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .registers 5

    const-string v0, "uep_property"

    const/4 v1, 0x0

    .line 145
    invoke-static {p1, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 150
    :cond_a
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/r;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 151
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/d;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 152
    new-instance p1, Lcom/xiaomi/mistatistic/sdk/data/k;

    const-string v0, "mistat_basic"

    const-string v1, "UEP"

    const-string v2, "yes"

    invoke-direct {p1, v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/data/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .line 154
    :cond_22
    new-instance p1, Lcom/xiaomi/mistatistic/sdk/data/k;

    const-string v0, "mistat_basic"

    const-string v1, "UEP"

    const-string v2, "no"

    invoke-direct {p1, v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/data/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .line 157
    :cond_2e
    new-instance p1, Lcom/xiaomi/mistatistic/sdk/data/k;

    const-string v0, "mistat_basic"

    const-string v1, "UEP"

    const-string v2, "not_miui"

    invoke-direct {p1, v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/data/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_39
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    .line 161
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object p1

    const-string v0, "uep_property"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .registers 4

    .line 297
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->e()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 301
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_45

    .line 303
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 304
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2c
    const-string p0, ","

    .line 307
    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    .line 308
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/k;

    const-string v1, "mistat_basic"

    const-string v2, "installed_package"

    invoke-direct {v0, v1, v2, p0}, Lcom/xiaomi/mistatistic/sdk/data/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3e} :catch_3f

    goto :goto_45

    :catch_3f
    move-exception p0

    const-string v0, ""

    .line 313
    invoke-static {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_45
    :goto_45
    return-void
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "connectivity"

    .line 319
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 320
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 321
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_39

    .line 324
    :cond_15
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    const-string p0, "WIFI"

    return-object p0

    .line 327
    :cond_1f
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_42

    .line 328
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_46

    const-string p0, "unknown"

    goto :goto_38

    :pswitch_2f
    const-string p0, "4G"

    return-object p0

    :pswitch_32
    const-string p0, "3G"

    return-object p0

    :pswitch_35
    const-string p0, "2G"

    return-object p0

    :goto_38
    return-object p0

    :cond_39
    :goto_39
    const-string p0, "unknown"
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3b} :catch_3c

    return-object p0

    :catch_3c
    move-exception p0

    const-string v0, ""

    .line 353
    invoke-static {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_42
    const-string p0, "unknown"

    return-object p0

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_35
        :pswitch_35
        :pswitch_32
        :pswitch_35
        :pswitch_32
        :pswitch_32
        :pswitch_35
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_32
        :pswitch_32
    .end packed-switch
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "0"

    .line 364
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SECONDARY_STORAGE"

    .line 365
    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 366
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 367
    invoke-static {p0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_25

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    const-string p0, "1"

    goto :goto_27

    :cond_25
    const-string p0, "2"
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_27} :catch_29

    :goto_27
    move-object v0, p0

    goto :goto_2f

    :catch_29
    move-exception p0

    const-string v1, ""

    .line 375
    invoke-static {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f
    :goto_2f
    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 6

    .line 53
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v0

    .line 54
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->b(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c(Landroid/content/Context;)V

    const-string v1, "basic_info_reported"

    .line 57
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 60
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Landroid/content/Context;)V

    const-string v1, "basic_info_reported"

    const/4 v2, 0x1

    .line 63
    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 66
    iput-boolean v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a:Z

    .line 70
    :cond_1d
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "basic_info_version"

    const-string v3, ""

    .line 71
    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_44

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 73
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->c()V

    .line 74
    new-instance v2, Lcom/xiaomi/mistatistic/sdk/data/h;

    const-string v3, "mistat_basic"

    const-string v4, "upgrade"

    invoke-direct {v2, v3, v4}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    :cond_44
    const-string v2, "basic_info_version"

    .line 77
    invoke-static {v0, v2, v1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a:Z

    if-eqz v0, :cond_55

    .line 80
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/l;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a()V

    :cond_55
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 166
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/h;

    const-string v1, "mistat_basic"

    const-string v2, "new"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    .line 169
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/k;

    const-string v1, "mistat_basic"

    const-string v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    .line 173
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/k;

    const-string v1, "mistat_basic"

    const-string v2, "OS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    const-string v0, "phone"

    .line 177
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 178
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 180
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/k;

    const-string v2, "mistat_basic"

    const-string v3, "operator"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/data/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    .line 184
    :cond_5b
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/d;->f()Z

    move-result v0

    if-nez v0, :cond_a1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->c()Z

    move-result v0

    if-nez v0, :cond_a1

    .line 187
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/e;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_id"

    .line 188
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imei_md5"

    .line 190
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android_id_md5"

    .line 193
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/r;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "serial_num_md5"

    .line 196
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mac_md5"

    .line 199
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_a1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    if-eqz p1, :cond_e3

    .line 205
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 206
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, p1, :cond_c6

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_c1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_d7

    :cond_c6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_c1

    .line 208
    :goto_d7
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/k;

    const-string v1, "mistat_basic"

    const-string v2, "resolution"

    invoke-direct {v0, v1, v2, p1}, Lcom/xiaomi/mistatistic/sdk/data/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    .line 213
    :cond_e3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "locale"

    .line 214
    invoke-static {v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ro.sys.miui_rom_channel_id"

    .line 217
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "channel"

    .line 218
    invoke-static {v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ro.product.mod_device"

    .line 221
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "device_name"

    .line 222
    invoke-static {v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ro.product.model.real"

    .line 225
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "real_model"

    .line 226
    invoke-static {v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/r;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_171

    const/4 p1, 0x0

    :try_start_11c
    const-string v0, "miui.os.Build"

    .line 231
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "IS_INTERNATIONAL_BUILD"

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 233
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    const-string v0, "1"

    goto :goto_133

    :cond_131
    const-string v0, "0"

    :goto_133
    const-string v1, "mi"

    .line 234
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_138} :catch_139

    goto :goto_13f

    :catch_139
    move-exception v0

    const-string v1, ""

    .line 236
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_13f
    :try_start_13f
    const-string v0, "miui.os.Build"

    .line 241
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "IS_ALPHA_BUILD"

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-string v2, "IS_DEVELOPMENT_VERSION"

    .line 243
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 244
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15a

    const-string p1, "A"

    goto :goto_165

    :cond_15a
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_163

    const-string p1, "D"

    goto :goto_165

    :cond_163
    const-string p1, "S"

    :goto_165
    const-string v0, "bc"

    .line 245
    invoke-static {v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_16a} :catch_16b

    goto :goto_171

    :catch_16b
    move-exception p1

    const-string v0, ""

    .line 247
    invoke-static {v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_171
    :goto_171
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 5

    const-string v0, "ril.limit_service_mnc"

    .line 255
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ril.limit_service_mcc"

    .line 256
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x3

    if-nez v2, :cond_2a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_2a

    .line 258
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 261
    :try_start_26
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_29} :catch_3a

    return-object v0

    .line 265
    :cond_2a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_3a

    .line 268
    :try_start_36
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_39} :catch_3a

    return-object v1

    :catch_3a
    :cond_3a
    const-string v0, ""

    return-object v0
.end method
