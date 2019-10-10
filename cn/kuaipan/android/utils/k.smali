.class public Lcn/kuaipan/android/utils/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = -0x1

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field private static final d:Z = false

.field private static final e:Ljava/lang/String; = "NetworkHelpers"

.field private static final f:I = 0x5


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .registers 2

    const-string v0, "connectivity"

    .line 66
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_15

    .line 69
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 71
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    goto :goto_16

    :cond_15
    const/4 p0, -0x1

    :goto_16
    return p0
.end method

.method public static a()Lorg/apache/http/HttpHost;
    .registers 4

    .line 79
    invoke-static {}, Lcn/kuaipan/android/utils/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcn/kuaipan/android/utils/k;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return-object v1

    .line 85
    :cond_c
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 88
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    :cond_1f
    return-object v1
.end method

.method public static a(Landroid/content/Context;ZZ)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "connectivity"

    .line 44
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez p0, :cond_17

    const-string p0, "NetworkHelpers"

    const-string p1, "Couldn\'t get connectivity manager"

    .line 47
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 52
    :cond_17
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 54
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    if-eqz v2, :cond_32

    if-nez p2, :cond_30

    .line 55
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result p2

    if-nez p2, :cond_32

    :cond_30
    const/4 p2, 0x1

    goto :goto_33

    :cond_32
    const/4 p2, 0x0

    :goto_33
    if-eqz p2, :cond_3e

    if-nez p1, :cond_3f

    .line 56
    invoke-static {p0}, Lcn/kuaipan/android/utils/k;->a(Landroid/net/NetworkInfo;)Z

    move-result p0

    if-nez p0, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x0

    :cond_3f
    :goto_3f
    return v0
.end method

.method private static a(Landroid/net/NetworkInfo;)Z
    .registers 3

    .line 94
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_e

    if-le p0, v0, :cond_d

    const/4 v1, 0x5

    if-gt p0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :cond_e
    :goto_e
    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "connectivity"

    .line 105
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_13

    const-string p0, "NetworkHelpers"

    const-string v1, "couldn\'t get connectivity manager"

    .line 108
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 110
    :cond_13
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2a

    const/4 v1, 0x0

    .line 112
    :goto_1a
    array-length v2, p0

    if-ge v1, v2, :cond_2a

    .line 113
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 p0, 0x1

    return p0

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2a
    :goto_2a
    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "connectivity"

    .line 133
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_12

    const-string p0, "NetworkHelpers"

    const-string v0, "couldn\'t get connectivity manager"

    .line 135
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 137
    :cond_12
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 138
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_26

    .line 142
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    :goto_26
    const/4 p0, 0x0

    return p0
.end method
