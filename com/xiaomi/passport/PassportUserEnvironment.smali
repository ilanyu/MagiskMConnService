.class public Lcom/xiaomi/passport/PassportUserEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;,
        Lcom/xiaomi/passport/PassportUserEnvironment$Holder;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PassportUserEnvironment"

.field private static final b:Ljava/lang/String; = "#"

.field private static final c:I = 0x6

.field private static final d:Ljava/lang/String; = "utf-8"

.field private static final e:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x6

    .line 448
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/passport/PassportUserEnvironment;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 452
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, ""

    return-object p1

    .line 456
    :cond_9
    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-lez p2, :cond_1c

    .line 457
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_16

    goto :goto_1c

    :cond_16
    const/4 v0, 0x0

    .line 461
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1c
    :goto_1c
    return-object p1
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_11

    .line 423
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_11

    :cond_9
    const-string v0, "#"

    const/4 v1, 0x6

    .line 426
    invoke-static {v0, p0, v1}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->a(Ljava/lang/String;Ljava/util/List;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    :goto_11
    const-string p0, ""

    return-object p0
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_10

    .line 430
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    :cond_9
    const-string v0, "#"

    .line 433
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    :goto_10
    const-string p0, ""

    return-object p0
.end method

.method private static a(DD)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double p0, p0, v0

    .line 407
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    const-wide/16 v2, 0xa

    mul-long p0, p0, v2

    mul-double p2, p2, v0

    .line 408
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    mul-long p2, p2, v2

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sub-long v4, p0, v2

    .line 411
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-long v1, p2, v2

    .line 412
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private a(Landroid/app/Application;Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;)Ljava/util/List;
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "phone"

    .line 287
    invoke-virtual {p1, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 290
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 291
    sget-object v2, Lcom/xiaomi/passport/PassportUserEnvironment$1;->a:[I

    invoke-virtual {p2}, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->ordinal()I

    move-result p2

    aget p2, v2, p2

    packed-switch p2, :pswitch_data_68

    .line 305
    new-instance p1, Ljava/lang/IllegalStateException;

    goto :goto_46

    .line 302
    :pswitch_1f
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 299
    :pswitch_27
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 296
    :pswitch_2f
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 293
    :pswitch_37
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    :goto_3e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_45

    return-object v1

    :cond_45
    return-object v0

    :goto_46
    const-string p2, "not here"

    .line 305
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4c
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4c} :catch_4c

    :catch_4c
    move-exception p1

    const-string p2, "PassportUserEnvironment"

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get SubscriberId with SecurityException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_37
        :pswitch_2f
        :pswitch_27
        :pswitch_1f
    .end packed-switch
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "utf-8"

    .line 482
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v1, 0xa

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception p1

    const-string v1, "PassportUserEnvironment"

    const-string v2, "base64 failed: "

    .line 484
    invoke-static {v1, v2, p1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 440
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 441
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 442
    invoke-direct {p0, v1}, Lcom/xiaomi/passport/PassportUserEnvironment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_21
    return-object v0
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 469
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 470
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 471
    invoke-direct {p0, v1}, Lcom/xiaomi/passport/PassportUserEnvironment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_21
    return-object v0
.end method

.method private h(Landroid/app/Application;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "wifi"

    .line 186
    invoke-virtual {p1, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 187
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 189
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_16} :catch_17

    return-object p1

    :catch_17
    move-exception p1

    const-string v1, "PassportUserEnvironment"

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get BSSID with SecurityException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return-object v0
.end method

.method private i(Landroid/app/Application;)Ljava/lang/String;
    .registers 2

    .line 198
    invoke-static {p1}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private j(Landroid/app/Application;)Ljava/lang/String;
    .registers 2

    .line 202
    invoke-static {p1}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private k(Landroid/app/Application;)I
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    :try_start_4
    const-string v1, "connectivity"

    .line 222
    invoke-virtual {p1, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 223
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 224
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 225
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_1c} :catch_1d

    return p1

    :catch_1d
    move-exception p1

    const-string v1, "PassportUserEnvironment"

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to getNetWorkType with SecurityException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return v0
.end method

.method private l(Landroid/app/Application;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 238
    :cond_4
    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private m(Landroid/app/Application;)Ljava/util/LinkedList;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            ")",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/passport/PassportUserEnvironment;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/PassportUserEnvironment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/passport/PassportUserEnvironment;->h(Landroid/app/Application;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaomi/passport/PassportUserEnvironment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x32

    .line 351
    invoke-virtual {v0, v3}, Lcom/xiaomi/passport/PassportUserEnvironment;->a(I)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/xiaomi/passport/PassportUserEnvironment;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 352
    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/passport/PassportUserEnvironment;->k(Landroid/app/Application;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/xiaomi/passport/PassportUserEnvironment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 353
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/xiaomi/passport/PassportUserEnvironment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 354
    sget-object v6, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/xiaomi/passport/PassportUserEnvironment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 355
    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/passport/PassportUserEnvironment;->l(Landroid/app/Application;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/xiaomi/passport/PassportUserEnvironment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 356
    invoke-virtual/range {p0 .. p1}, Lcom/xiaomi/passport/PassportUserEnvironment;->f(Landroid/app/Application;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/xiaomi/passport/PassportUserEnvironment;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 357
    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/passport/PassportUserEnvironment;->j(Landroid/app/Application;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/xiaomi/passport/PassportUserEnvironment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 358
    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/passport/PassportUserEnvironment;->i(Landroid/app/Application;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/xiaomi/passport/PassportUserEnvironment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 359
    invoke-virtual/range {p0 .. p1}, Lcom/xiaomi/passport/PassportUserEnvironment;->b(Landroid/app/Application;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/xiaomi/passport/PassportUserEnvironment;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 360
    invoke-virtual/range {p0 .. p1}, Lcom/xiaomi/passport/PassportUserEnvironment;->c(Landroid/app/Application;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v0, v12}, Lcom/xiaomi/passport/PassportUserEnvironment;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 361
    invoke-virtual/range {p0 .. p1}, Lcom/xiaomi/passport/PassportUserEnvironment;->d(Landroid/app/Application;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v0, v13}, Lcom/xiaomi/passport/PassportUserEnvironment;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    .line 362
    invoke-virtual/range {p0 .. p1}, Lcom/xiaomi/passport/PassportUserEnvironment;->e(Landroid/app/Application;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v0, v14}, Lcom/xiaomi/passport/PassportUserEnvironment;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/passport/PassportUserEnvironment;->b()Ljava/util/List;

    move-result-object v15

    invoke-direct {v0, v15}, Lcom/xiaomi/passport/PassportUserEnvironment;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    move-object/from16 v16, v15

    .line 364
    invoke-virtual/range {p0 .. p1}, Lcom/xiaomi/passport/PassportUserEnvironment;->a(Landroid/app/Application;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v15}, Lcom/xiaomi/passport/PassportUserEnvironment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 366
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 367
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 371
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-virtual {v0, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-virtual {v0, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-virtual {v0, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-virtual {v0, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-virtual {v0, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v16

    .line 381
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 90
    :try_start_1
    invoke-static {}, Lcom/xiaomi/accountsdk/account/h;->e()Landroid/app/Application;

    move-result-object v0

    .line 91
    new-instance v1, Lcom/xiaomi/accountsdk/hasheddeviceidlib/PlainDeviceIdUtil$PlainDeviceIdUtilImplDefault;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/PlainDeviceIdUtil$PlainDeviceIdUtilImplDefault;-><init>()V

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/PlainDeviceIdUtil$PlainDeviceIdUtilImplDefault;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    .line 89
    monitor-exit p0

    throw v0
.end method

.method protected a(Landroid/app/Application;)Ljava/lang/String;
    .registers 5

    .line 244
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 246
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    const-string v0, "PassportUserEnvironment"

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get bluetooth id with SecurityException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lcom/xiaomi/passport/PassportUserEnvironment;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 144
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_11

    const/4 v1, 0x0

    .line 145
    invoke-interface {v0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_11
    return-object v0
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected b(Landroid/app/Application;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 256
    sget-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->a:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/passport/PassportUserEnvironment;->a(Landroid/app/Application;Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    invoke-static {}, Lcom/xiaomi/accountsdk/account/h;->e()Landroid/app/Application;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c(Landroid/app/Application;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 261
    sget-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->b:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/passport/PassportUserEnvironment;->a(Landroid/app/Application;Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .registers 6

    .line 106
    invoke-static {}, Lcom/xiaomi/accountsdk/account/h;->e()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    const-string v2, "wifi"

    .line 111
    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 112
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_1e} :catch_21

    goto :goto_20

    :cond_1f
    move-object v0, v1

    :goto_20
    return-object v0

    :catch_21
    move-exception v0

    const-string v2, "PassportUserEnvironment"

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get SSID with SecurityException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method protected d(Landroid/app/Application;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    invoke-static {}, Lcom/xiaomi/accountsdk/account/h;->e()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    const-string v2, "wifi"

    .line 126
    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 127
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_17

    return-object v1

    .line 131
    :cond_17
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 133
    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_35} :catch_37

    goto :goto_24

    :cond_36
    return-object v2

    :catch_37
    move-exception v0

    const-string v2, "PassportUserEnvironment"

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get configuredSSIDs with SecurityException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method protected e(Landroid/app/Application;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->c:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/passport/PassportUserEnvironment;->a(Landroid/app/Application;Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/lang/String;
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 155
    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 156
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_f} :catch_11

    move-object v0, v1

    :cond_10
    return-object v0

    :catch_11
    move-exception v1

    const-string v2, "PassportUserEnvironment"

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get bluetooth id with SecurityException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method protected f(Landroid/app/Application;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->d:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/passport/PassportUserEnvironment;->a(Landroid/app/Application;Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public g()Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    invoke-static {}, Lcom/xiaomi/accountsdk/account/h;->e()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    const-string v2, "phone"

    .line 170
    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 171
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    const-string v2, "PassportUserEnvironment"

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get network operator with SecurityException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public g(Landroid/app/Application;)[Ljava/lang/String;
    .registers 5

    .line 387
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/PassportUserEnvironment;->m(Landroid/app/Application;)Ljava/util/LinkedList;

    move-result-object p1

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 389
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1c

    const-string v1, ""

    goto :goto_2d

    .line 393
    :cond_1c
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_27

    .line 394
    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/xiaomi/passport/PassportUserEnvironment;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2d

    .line 395
    :cond_27
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_31

    .line 396
    check-cast v1, Ljava/lang/String;

    .line 400
    :goto_2d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 398
    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not here"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 402
    :cond_39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method
