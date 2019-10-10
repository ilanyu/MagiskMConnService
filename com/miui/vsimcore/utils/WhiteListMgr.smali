.class public Lcom/miui/vsimcore/utils/WhiteListMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/vsimcore/utils/WhiteListMgr$Application;,
        Lcom/miui/vsimcore/utils/WhiteListMgr$Holder;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VSC-WhiteListMgr"

    .line 26
    iput-object v0, p0, Lcom/miui/vsimcore/utils/WhiteListMgr;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 224
    iput v0, p0, Lcom/miui/vsimcore/utils/WhiteListMgr;->c:I

    .line 37
    invoke-direct {p0}, Lcom/miui/vsimcore/utils/WhiteListMgr;->b()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/vsimcore/utils/WhiteListMgr$1;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Lcom/miui/vsimcore/utils/WhiteListMgr;-><init>()V

    return-void
.end method

.method private a(Landroid/content/res/XmlResourceParser;)Lcom/miui/vsimcore/utils/WhiteListMgr$Application;
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

    .line 120
    invoke-interface {p1, v2, v1, v0}, Landroid/content/res/XmlResourceParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v0, Lcom/miui/vsimcore/utils/WhiteListMgr$Application;

    invoke-direct {v0, v1}, Lcom/miui/vsimcore/utils/WhiteListMgr$Application;-><init>(Lcom/miui/vsimcore/utils/WhiteListMgr$1;)V

    .line 122
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    :goto_10
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v1, v3, :cond_a4

    if-eq v1, v2, :cond_21

    .line 125
    iput-boolean v4, v0, Lcom/miui/vsimcore/utils/WhiteListMgr$Application;->c:Z

    const-string v2, "VSC-WhiteListMgr"

    const-string v5, "parse fail"

    .line 126
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a4

    .line 129
    :cond_21
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageName"

    .line 130
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_56

    .line 131
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    if-ne v1, v7, :cond_3e

    .line 133
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/vsimcore/utils/WhiteListMgr$Application;->a:Ljava/lang/String;

    .line 134
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    :cond_3e
    if-ne v1, v3, :cond_4c

    .line 136
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageName"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7d

    .line 138
    :cond_4c
    iput-boolean v4, v0, Lcom/miui/vsimcore/utils/WhiteListMgr$Application;->c:Z

    const-string v2, "VSC-WhiteListMgr"

    const-string v5, "parse fail"

    .line 139
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    :cond_56
    const-string v6, "SignatureHash"

    .line 143
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 144
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    if-ne v1, v7, :cond_6e

    .line 146
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/vsimcore/utils/WhiteListMgr$Application;->b:Ljava/lang/String;

    .line 147
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    :cond_6e
    if-ne v1, v3, :cond_82

    .line 149
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SignatureHash"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7d

    goto :goto_82

    .line 161
    :cond_7d
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    goto :goto_10

    .line 151
    :cond_82
    :goto_82
    iput-boolean v4, v0, Lcom/miui/vsimcore/utils/WhiteListMgr$Application;->c:Z

    const-string v2, "VSC-WhiteListMgr"

    const-string v5, "parse fail"

    .line 152
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    .line 157
    :cond_8c
    iput-boolean v4, v0, Lcom/miui/vsimcore/utils/WhiteListMgr$Application;->c:Z

    const-string v2, "VSC-WhiteListMgr"

    .line 158
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

    .line 163
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Application"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b4

    .line 165
    :cond_b2
    iput-boolean v4, v0, Lcom/miui/vsimcore/utils/WhiteListMgr$Application;->c:Z

    :cond_b4
    return-object v0
.end method

.method public static a()Lcom/miui/vsimcore/utils/WhiteListMgr;
    .registers 1

    .line 29
    sget-object v0, Lcom/miui/vsimcore/utils/WhiteListMgr$Holder;->a:Lcom/miui/vsimcore/utils/WhiteListMgr;

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .registers 8

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_21

    aget-byte v4, p0, v3

    const-string v5, "%02x"

    const/4 v6, 0x1

    .line 293
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 295
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .registers 10

    const/4 v0, 0x0

    .line 55
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 57
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/vsimcore/base/VsimCoreApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0e0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 59
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 62
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-nez v3, :cond_35

    .line 63
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_21
    if-eqz v3, :cond_2d

    if-eqz v3, :cond_35

    const-string v4, "Entries"

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 66
    :cond_2d
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 67
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    :cond_35
    const/4 v3, 0x0

    const-string v4, "Entries"

    const/4 v5, 0x2

    .line 71
    invoke-interface {v2, v5, v3, v4}, Landroid/content/res/XmlResourceParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    :goto_40
    const/4 v4, 0x3

    const/4 v6, 0x1

    if-eq v3, v4, :cond_b7

    if-eq v3, v5, :cond_4e

    const-string v0, "VSC-WhiteListMgr"

    const-string v5, "parse fail"

    .line 81
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8

    .line 85
    :cond_4e
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Application"

    .line 86
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 87
    invoke-direct {p0, v2}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a(Landroid/content/res/XmlResourceParser;)Lcom/miui/vsimcore/utils/WhiteListMgr$Application;

    move-result-object v7

    .line 88
    iget-boolean v8, v7, Lcom/miui/vsimcore/utils/WhiteListMgr$Application;->c:Z

    if-eqz v8, :cond_6a

    const-string v0, "VSC-WhiteListMgr"

    const-string v5, "parse fail"

    .line 90
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8

    .line 93
    :cond_6a
    iget-object v3, v7, Lcom/miui/vsimcore/utils/WhiteListMgr$Application;->a:Ljava/lang/String;

    if-nez v3, :cond_72

    iget-object v3, v7, Lcom/miui/vsimcore/utils/WhiteListMgr$Application;->b:Ljava/lang/String;

    if-eqz v3, :cond_9b

    .line 94
    :cond_72
    iget-object v3, v7, Lcom/miui/vsimcore/utils/WhiteListMgr$Application;->a:Ljava/lang/String;

    iget-object v4, v7, Lcom/miui/vsimcore/utils/WhiteListMgr$Application;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "VSC-WhiteListMgr"

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appname: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lcom/miui/vsimcore/utils/WhiteListMgr$Application;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " appkey: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lcom/miui/vsimcore/utils/WhiteListMgr$Application;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_9b
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    goto :goto_40

    :cond_a0
    const-string v0, "VSC-WhiteListMgr"

    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parse fail"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8

    :cond_b7
    const/4 v6, 0x0

    :goto_b8
    if-nez v6, :cond_d6

    if-ne v3, v4, :cond_d6

    .line 106
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Entries"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c9

    goto :goto_d6

    .line 110
    :cond_c9
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f5

    .line 111
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/vsimcore/utils/WhiteListMgr;->b:Ljava/util/Map;

    goto :goto_f5

    :cond_d6
    :goto_d6
    const-string v0, "VSC-WhiteListMgr"

    const-string v1, "FAIL"

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_dd} :catch_de

    goto :goto_f5

    :catch_de
    move-exception v0

    const-string v1, "VSC-WhiteListMgr"

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f5
    :goto_f5
    return-void
.end method

.method private c()Z
    .registers 10

    .line 227
    iget v0, p0, Lcom/miui/vsimcore/utils/WhiteListMgr;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    .line 229
    :cond_6
    iget v0, p0, Lcom/miui/vsimcore/utils/WhiteListMgr;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_d

    return v3

    :cond_d
    const-string v0, "27196e386b875e76adf700e7ea84e4c6eee33dfa"

    .line 234
    :try_start_f
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/vsimcore/base/VsimCoreApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 235
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/vsimcore/base/VsimCoreApp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 236
    array-length v5, v4

    const/4 v6, 0x0

    :goto_29
    if-ge v6, v5, :cond_7a

    aget-object v7, v4, v6

    .line 239
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    .line 240
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v7, "X509"

    .line 243
    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v7

    .line 244
    invoke-virtual {v7, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 245
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v7

    const-string v8, "SHA-1"

    .line 248
    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 249
    invoke-virtual {v8, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 250
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .line 253
    invoke-static {v7}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a([B)Ljava/lang/String;

    move-result-object v7

    .line 254
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 255
    iput v1, p0, Lcom/miui/vsimcore/utils/WhiteListMgr;->c:I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_5f} :catch_63

    return v1

    :cond_60
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :catch_63
    move-exception v0

    const-string v1, "VSC-WhiteListMgr"

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception reading client data!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_7a
    iput v2, p0, Lcom/miui/vsimcore/utils/WhiteListMgr;->c:I

    return v3
.end method


# virtual methods
.method public a(I)Z
    .registers 13

    .line 173
    invoke-direct {p0}, Lcom/miui/vsimcore/utils/WhiteListMgr;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    const-string p1, "VSC-WhiteListMgr"

    const-string v0, "This is internal MIUI,not need to verify"

    .line 174
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 177
    :cond_f
    iget-object v0, p0, Lcom/miui/vsimcore/utils/WhiteListMgr;->b:Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v0, :cond_15

    return v2

    .line 180
    :cond_15
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/vsimcore/base/VsimCoreApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 181
    array-length v0, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_24
    if-ge v3, v0, :cond_a2

    aget-object v5, p1, v3

    .line 182
    iget-object v6, p0, Lcom/miui/vsimcore/utils/WhiteListMgr;->b:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9f

    .line 183
    iget-object v6, p0, Lcom/miui/vsimcore/utils/WhiteListMgr;->b:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 184
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 186
    :try_start_3d
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/vsimcore/base/VsimCoreApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x40

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 187
    array-length v7, v5

    const/4 v8, 0x0

    :goto_4f
    if-ge v8, v7, :cond_9f

    aget-object v9, v5, v8

    .line 190
    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v9

    .line 191
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v9, "X509"

    .line 194
    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v9

    .line 195
    invoke-virtual {v9, v10}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 196
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v9

    const-string v10, "SHA-1"

    .line 199
    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    .line 200
    invoke-virtual {v10, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 201
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    .line 204
    invoke-static {v9}, Lcom/miui/vsimcore/utils/WhiteListMgr;->a([B)Ljava/lang/String;

    move-result-object v9

    .line 206
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_81} :catch_88

    if-eqz v9, :cond_85

    const/4 v4, 0x1

    goto :goto_9f

    :cond_85
    add-int/lit8 v8, v8, 0x1

    goto :goto_4f

    :catch_88
    move-exception v5

    const-string v6, "VSC-WhiteListMgr"

    .line 213
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception reading client data!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    :goto_9f
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_a2
    return v4
.end method

.method public a(J)Z
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_8

    return v1

    .line 281
    :cond_8
    iget-object v0, p0, Lcom/miui/vsimcore/utils/WhiteListMgr;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 282
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0xa

    .line 283
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_36
    return v1
.end method

.method public b(I)J
    .registers 7

    .line 267
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/vsimcore/base/VsimCoreApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 268
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_33

    aget-object v3, p1, v2

    .line 269
    iget-object v4, p0, Lcom/miui/vsimcore/utils/WhiteListMgr;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 270
    iget-object p1, p0, Lcom/miui/vsimcore/utils/WhiteListMgr;->b:Ljava/util/Map;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 v0, 0xa

    .line 271
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_33
    const-wide/16 v0, 0x0

    return-wide v0
.end method
