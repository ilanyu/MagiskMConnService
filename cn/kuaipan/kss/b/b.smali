.class public Lcn/kuaipan/kss/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 92
    iput v0, p0, Lcn/kuaipan/kss/b/b;->a:I

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcn/kuaipan/kss/b/b;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;
    .registers 4

    .line 73
    invoke-virtual {p0}, Lcn/kuaipan/kss/b/b;->a()Z

    move-result v0

    if-nez v0, :cond_c

    .line 74
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 77
    :cond_c
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcn/kuaipan/kss/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v1, "Dest-Url"

    .line 78
    invoke-virtual {v0, v1, p1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/net/URI;)Lorg/apache/http/client/methods/HttpGet;
    .registers 4

    .line 63
    invoke-virtual {p0}, Lcn/kuaipan/kss/b/b;->a()Z

    move-result v0

    if-nez v0, :cond_c

    .line 64
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    return-object v0

    .line 67
    :cond_c
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcn/kuaipan/kss/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v1, "Dest-Url"

    .line 68
    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a([Ljava/lang/String;)V
    .registers 2

    .line 13
    iput-object p1, p0, Lcn/kuaipan/kss/b/b;->b:[Ljava/lang/String;

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcn/kuaipan/kss/b/b;->a:I

    return-void
.end method

.method public a()Z
    .registers 3

    .line 18
    iget v0, p0, Lcn/kuaipan/kss/b/b;->a:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public b(Ljava/net/URI;)Lorg/apache/http/client/methods/HttpPost;
    .registers 4

    .line 83
    invoke-virtual {p0}, Lcn/kuaipan/kss/b/b;->a()Z

    move-result v0

    if-nez v0, :cond_c

    .line 84
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    return-object v0

    .line 87
    :cond_c
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcn/kuaipan/kss/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v1, "Dest-Url"

    .line 88
    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Z
    .registers 5

    .line 27
    iget-object v0, p0, Lcn/kuaipan/kss/b/b;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 31
    :cond_6
    iget v0, p0, Lcn/kuaipan/kss/b/b;->a:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcn/kuaipan/kss/b/b;->a:I

    .line 32
    iget v0, p0, Lcn/kuaipan/kss/b/b;->a:I

    iget-object v3, p0, Lcn/kuaipan/kss/b/b;->b:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_14

    return v2

    .line 35
    :cond_14
    iget v0, p0, Lcn/kuaipan/kss/b/b;->a:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcn/kuaipan/kss/b/b;->a:I

    return v1
.end method

.method public c()Ljava/lang/String;
    .registers 4

    .line 41
    iget-object v0, p0, Lcn/kuaipan/kss/b/b;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 45
    :cond_6
    iget v0, p0, Lcn/kuaipan/kss/b/b;->a:I

    if-ltz v0, :cond_19

    iget v0, p0, Lcn/kuaipan/kss/b/b;->a:I

    iget-object v2, p0, Lcn/kuaipan/kss/b/b;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_12

    goto :goto_19

    .line 48
    :cond_12
    iget-object v0, p0, Lcn/kuaipan/kss/b/b;->b:[Ljava/lang/String;

    iget v1, p0, Lcn/kuaipan/kss/b/b;->a:I

    aget-object v0, v0, v1

    return-object v0

    :cond_19
    :goto_19
    return-object v1
.end method

.method public d()Z
    .registers 2

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcn/kuaipan/kss/b/b;->a:I

    const/4 v0, 0x1

    return v0
.end method
