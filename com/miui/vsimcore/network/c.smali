.class public Lcom/miui/vsimcore/network/c;
.super Lcom/android/volley/toolbox/d;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "VSC-PassPortStack"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/android/volley/toolbox/d;-><init>()V

    return-void
.end method

.method private static a(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    .line 96
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3f

    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_12

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    return-object p0
.end method


# virtual methods
.method public a(Lcom/android/volley/Request;Ljava/util/Map;)Lcom/android/volley/toolbox/i;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/volley/toolbox/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/a;
        }
    .end annotation

    .line 35
    check-cast p1, Lcom/miui/vsimcore/network/a;

    .line 36
    invoke-virtual {p1}, Lcom/miui/vsimcore/network/a;->f()Ljava/lang/String;

    move-result-object p2

    .line 37
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 38
    invoke-static {p2}, Lcom/miui/vsimcore/network/c;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 39
    invoke-virtual {p1}, Lcom/miui/vsimcore/network/a;->p()Ljava/util/Map;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Lcom/miui/vsimcore/network/a;->a()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/vsimcore/network/c;->a(ILjava/lang/String;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p1

    const-string p2, ""

    const/4 v0, 0x0

    if-eqz p1, :cond_31

    .line 44
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 45
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->d()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xc8

    .line 47
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a()Ljava/util/Map;

    move-result-object p1

    goto :goto_34

    :cond_31
    const/16 v1, 0x194

    move-object p1, v0

    .line 51
    :goto_34
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    if-eqz p1, :cond_68

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_47
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 56
    new-instance v3, Lcom/android/volley/e;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/android/volley/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 59
    :cond_68
    new-instance p1, Lcom/android/volley/toolbox/i;

    array-length v2, p2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/android/volley/toolbox/i;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-object p1
.end method

.method public a(ILjava/lang/String;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_f

    .line 78
    :try_start_8
    invoke-static {p2, p3, v0, v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0

    goto :goto_13

    :catch_d
    move-exception p1

    goto :goto_14

    .line 80
    :cond_f
    invoke-static {p2, p3, v0, v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0
    :try_end_13
    .catch Lcom/xiaomi/accountsdk/request/c; {:try_start_8 .. :try_end_13} :catch_18
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_d

    :goto_13
    return-object v0

    .line 90
    :goto_14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36

    :catch_18
    const-string v0, "VSC-PassPortStack"

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service Token is Expired,Obtain Again: retry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_36

    const/4 p4, 0x0

    .line 87
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/vsimcore/network/c;->a(ILjava/lang/String;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p1

    return-object p1

    :cond_36
    :goto_36
    const/4 p1, 0x0

    return-object p1
.end method
