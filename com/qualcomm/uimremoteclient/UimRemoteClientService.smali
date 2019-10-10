.class public Lcom/qualcomm/uimremoteclient/UimRemoteClientService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/uimremoteclient/UimRemoteClientService$Application;,
        Lcom/qualcomm/uimremoteclient/UimRemoteClientService$UimRemoteError;
    }
.end annotation


# static fields
.field public static final EVENT_RADIO_AVAILABLE:I = 0xa

.field public static final EVENT_RADIO_NOT_AVAILABLE:I = 0xb

.field public static final EVENT_REQ:I = 0x1

.field public static final EVENT_RESP:I = 0x2


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private UimRemoteClientWhiteList:Ljava/util/Map;

.field private context:Landroid/content/Context;

.field private final mBinder:Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;

.field mCb:Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

.field private mRadioStateHdlr:Landroid/os/Handler;

.field private mRespHdlr:Landroid/os/Handler;

.field private mSocket:[Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;

.field private mToken:I

.field private simSlots:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "VSC-UimService"

    .line 46
    iput-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mToken:I

    .line 62
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->simSlots:I

    .line 64
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->simSlots:I

    new-array v0, v0, [Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;

    iput-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mSocket:[Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mCb:Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    .line 78
    new-instance v0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$1;-><init>(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;)V

    iput-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mRadioStateHdlr:Landroid/os/Handler;

    .line 111
    new-instance v0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$2;-><init>(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;)V

    iput-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mRespHdlr:Landroid/os/Handler;

    .line 246
    new-instance v0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$4;

    invoke-direct {v0, p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$4;-><init>(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;)V

    iput-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mBinder:Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;)Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mBinder:Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;

    return-object p0
.end method

.method static synthetic access$100(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;I)Z
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->verifyAuthenticity(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;)I
    .registers 1

    .line 45
    iget p0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->simSlots:I

    return p0
.end method

.method static synthetic access$300(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;)[Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mSocket:[Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;

    return-object p0
.end method

.method static synthetic access$408(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;)I
    .registers 3

    .line 45
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mToken:I

    return v0
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .registers 8

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_21

    aget-byte v4, p0, v3

    const-string v5, "%02x"

    const/4 v6, 0x1

    .line 469
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 471
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getWhiteList()V
    .registers 10

    const/4 v0, 0x0

    .line 403
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 405
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0e0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 406
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 409
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-nez v3, :cond_31

    .line 410
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_1d
    if-eqz v3, :cond_29

    if-eqz v3, :cond_31

    const-string v4, "Entries"

    .line 412
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 413
    :cond_29
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 414
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    :cond_31
    const/4 v3, 0x0

    const-string v4, "Entries"

    const/4 v5, 0x2

    .line 418
    invoke-interface {v2, v5, v3, v4}, Landroid/content/res/XmlResourceParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    :goto_3c
    const/4 v4, 0x3

    const/4 v6, 0x1

    if-eq v3, v4, :cond_b3

    if-eq v3, v5, :cond_4a

    const-string v0, "VSC-UimService"

    const-string v5, "parse fail"

    .line 428
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    .line 432
    :cond_4a
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Application"

    .line 433
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9c

    .line 434
    invoke-direct {p0, v2}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->readApplication(Landroid/content/res/XmlResourceParser;)Lcom/qualcomm/uimremoteclient/UimRemoteClientService$Application;

    move-result-object v7

    .line 435
    iget-boolean v8, v7, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$Application;->parsingFail:Z

    if-eqz v8, :cond_66

    const-string v0, "VSC-UimService"

    const-string v5, "parse fail"

    .line 437
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    .line 440
    :cond_66
    iget-object v3, v7, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$Application;->name:Ljava/lang/String;

    if-nez v3, :cond_6e

    iget-object v3, v7, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$Application;->key:Ljava/lang/String;

    if-eqz v3, :cond_97

    .line 441
    :cond_6e
    iget-object v3, v7, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$Application;->name:Ljava/lang/String;

    iget-object v4, v7, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$Application;->key:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "VSC-UimService"

    .line 442
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appname: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$Application;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " appkey: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$Application;->key:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_97
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    goto :goto_3c

    :cond_9c
    const-string v0, "VSC-UimService"

    .line 447
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parse fail"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    :cond_b3
    const/4 v6, 0x0

    :goto_b4
    if-nez v6, :cond_d2

    if-ne v3, v4, :cond_d2

    .line 453
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Entries"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c5

    goto :goto_d2

    .line 457
    :cond_c5
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f1

    .line 458
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->UimRemoteClientWhiteList:Ljava/util/Map;

    goto :goto_f1

    :cond_d2
    :goto_d2
    const-string v0, "VSC-UimService"

    const-string v1, "FAIL"

    .line 455
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d9} :catch_da

    goto :goto_f1

    :catch_da
    move-exception v0

    const-string v1, "VSC-UimService"

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f1
    :goto_f1
    return-void
.end method

.method private isInternalMIUI()Z
    .registers 9

    const/4 v0, 0x0

    .line 479
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 480
    array-length v2, v1

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_84

    aget-object v4, v1, v3

    .line 483
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    .line 484
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v4, "X509"

    .line 487
    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 488
    invoke-virtual {v4, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 489
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    const-string v5, "SHA-1"

    .line 492
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 493
    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 494
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 497
    invoke-static {v4}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "VSC-UimService"

    .line 498
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " internal sign is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "27196e386b875e76adf700e7ea84e4c6eee33dfa"

    .line 500
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_66} :catch_6d

    if-eqz v4, :cond_6a

    const/4 v0, 0x1

    goto :goto_84

    :cond_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :catch_6d
    move-exception v1

    const-string v2, "VSC-UimService"

    .line 507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception reading client data!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    :goto_84
    return v0
.end method

.method private readApplication(Landroid/content/res/XmlResourceParser;)Lcom/qualcomm/uimremoteclient/UimRemoteClientService$Application;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Application"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 347
    invoke-interface {p1, v2, v1, v0}, Landroid/content/res/XmlResourceParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 348
    new-instance v0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$Application;

    invoke-direct {v0, v1}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$Application;-><init>(Lcom/qualcomm/uimremoteclient/UimRemoteClientService$1;)V

    .line 349
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    :goto_10
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v1, v3, :cond_a4

    if-eq v1, v2, :cond_21

    .line 352
    iput-boolean v4, v0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$Application;->parsingFail:Z

    const-string v2, "VSC-UimService"

    const-string v5, "parse fail"

    .line 353
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a4

    .line 356
    :cond_21
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageName"

    .line 357
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_56

    .line 358
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    if-ne v1, v7, :cond_3e

    .line 360
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$Application;->name:Ljava/lang/String;

    .line 361
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    :cond_3e
    if-ne v1, v3, :cond_4c

    .line 363
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageName"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7d

    .line 365
    :cond_4c
    iput-boolean v4, v0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$Application;->parsingFail:Z

    const-string v2, "VSC-UimService"

    const-string v5, "parse fail"

    .line 366
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    :cond_56
    const-string v6, "SignatureHash"

    .line 370
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 371
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    if-ne v1, v7, :cond_6e

    .line 373
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$Application;->key:Ljava/lang/String;

    .line 374
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    :cond_6e
    if-ne v1, v3, :cond_82

    .line 376
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SignatureHash"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7d

    goto :goto_82

    .line 388
    :cond_7d
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    goto :goto_10

    .line 378
    :cond_82
    :goto_82
    iput-boolean v4, v0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$Application;->parsingFail:Z

    const-string v2, "VSC-UimService"

    const-string v5, "parse fail"

    .line 379
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    .line 384
    :cond_8c
    iput-boolean v4, v0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$Application;->parsingFail:Z

    const-string v2, "VSC-UimService"

    .line 385
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a4
    :goto_a4
    if-ne v1, v3, :cond_b2

    .line 390
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Application"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b4

    .line 392
    :cond_b2
    iput-boolean v4, v0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$Application;->parsingFail:Z

    :cond_b4
    return-object v0
.end method

.method private verifyAuthenticity(I)Z
    .registers 13

    .line 515
    invoke-direct {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->isInternalMIUI()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    const-string p1, "VSC-UimService"

    const-string v0, "This is internal MIUI,not need to verify"

    .line 516
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 519
    :cond_f
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->UimRemoteClientWhiteList:Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v0, :cond_15

    return v2

    .line 522
    :cond_15
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 523
    array-length v0, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_22
    if-ge v3, v0, :cond_9e

    aget-object v5, p1, v3

    .line 524
    iget-object v6, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->UimRemoteClientWhiteList:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 525
    iget-object v6, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->UimRemoteClientWhiteList:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 526
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 528
    :try_start_3b
    iget-object v7, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x40

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 529
    array-length v7, v5

    const/4 v8, 0x0

    :goto_4b
    if-ge v8, v7, :cond_9b

    aget-object v9, v5, v8

    .line 532
    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v9

    .line 533
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v9, "X509"

    .line 536
    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v9

    .line 537
    invoke-virtual {v9, v10}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 538
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v9

    const-string v10, "SHA-1"

    .line 541
    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    .line 542
    invoke-virtual {v10, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 543
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    .line 546
    invoke-static {v9}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->bytesToHex([B)Ljava/lang/String;

    move-result-object v9

    .line 548
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_7d} :catch_84

    if-eqz v9, :cond_81

    const/4 v4, 0x1

    goto :goto_9b

    :cond_81
    add-int/lit8 v8, v8, 0x1

    goto :goto_4b

    :catch_84
    move-exception v5

    const-string v6, "VSC-UimService"

    .line 555
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception reading client data!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9b
    :goto_9b
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_9e
    return v4
.end method


# virtual methods
.method public disableVSIM()V
    .registers 5

    .line 185
    :try_start_0
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimSlotId(Landroid/content/Context;)I

    move-result v0

    .line 186
    iget-object v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mBinder:Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;

    const/4 v2, 0x0

    new-array v3, v2, [B

    invoke-virtual {v1, v0, v2, v3, v2}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;->uimRemoteEvent(II[BI)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_19

    :catch_11
    move-exception v0

    const-string v1, "VSC-UimService"

    const-string v2, "failed to send CONN_UNAVAILABLE"

    .line 188
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    :goto_19
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->h()V

    .line 193
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$3;

    invoke-direct {v1, p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$3;-><init>(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const-string p1, "VSC-UimService"

    const-string v0, "onBind()"

    .line 232
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mBinder:Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;

    return-object p1
.end method

.method public onCreate()V
    .registers 5

    .line 203
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "VSC-UimService"

    const-string v1, "onCreate()"

    .line 204
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VSC-UimService"

    const-string v1, "version 1.0 uim remote service"

    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iput-object p0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->context:Landroid/content/Context;

    const-string v0, "VSC-UimService"

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->simSlots:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 210
    :goto_2c
    iget v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->simSlots:I

    if-ge v0, v1, :cond_53

    .line 211
    iget-object v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mSocket:[Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;

    new-instance v2, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;

    iget-object v3, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mRespHdlr:Landroid/os/Handler;

    invoke-direct {v2, v3, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;-><init>(Landroid/os/Handler;I)V

    aput-object v2, v1, v0

    .line 212
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mSocket:[Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 213
    invoke-static {}, Lcom/miui/vsimcore/utils/RadioStateCompat;->a()Lcom/miui/vsimcore/utils/RadioStateCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mRadioStateHdlr:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/miui/vsimcore/utils/RadioStateCompat;->a(Landroid/os/Handler;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 217
    :cond_53
    invoke-direct {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->getWhiteList()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const-string v0, "VSC-UimService"

    const-string v1, "onDestroy()"

    .line 238
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 239
    :goto_8
    iget v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->simSlots:I

    if-ge v0, v1, :cond_16

    .line 240
    iget-object v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mSocket:[Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->toDestroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 242
    :cond_16
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->stopSelf()V

    .line 243
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    const-string p2, "disableVSIM"

    const/4 p3, 0x0

    .line 222
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string p2, "VSC-UimService"

    .line 223
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "disableVSIM: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_22

    .line 225
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->disableVSIM()V

    :cond_22
    const/4 p1, 0x1

    return p1
.end method
