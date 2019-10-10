.class Lcn/kuaipan/kss/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/kss/KssDownload$BlockDownloadInfo;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:[B


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 152
    iput v0, p0, Lcn/kuaipan/kss/a/d;->a:I

    const/4 v0, 0x0

    .line 153
    iput v0, p0, Lcn/kuaipan/kss/a/d;->b:I

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcn/kuaipan/kss/a/d;->c:Ljava/lang/String;

    .line 155
    iput-object v0, p0, Lcn/kuaipan/kss/a/d;->d:[B

    .line 125
    iput p1, p0, Lcn/kuaipan/kss/a/d;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 94
    iget v0, p0, Lcn/kuaipan/kss/a/d;->a:I

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 2

    .line 119
    iget-object p1, p0, Lcn/kuaipan/kss/a/d;->c:Ljava/lang/String;

    return-object p1
.end method

.method public a(Lorg/json/JSONObject;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    :try_start_4
    const-string v1, "sha1"

    .line 135
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-static {v1}, Lcn/kuaipan/kss/c/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcn/kuaipan/kss/a/d;->d:[B

    const-string v1, "urls"

    .line 139
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 140
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/kuaipan/kss/a/d;->c:Ljava/lang/String;

    const-string v1, "size"

    .line 142
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/kuaipan/kss/a/d;->b:I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_26

    const/4 p1, 0x1

    return p1

    :catch_26
    move-exception p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    .line 145
    iput-object p1, p0, Lcn/kuaipan/kss/a/d;->c:Ljava/lang/String;

    .line 146
    iput v0, p0, Lcn/kuaipan/kss/a/d;->b:I

    return v0
.end method

.method public b()I
    .registers 2

    .line 99
    iget v0, p0, Lcn/kuaipan/kss/a/d;->b:I

    return v0
.end method

.method public c()[B
    .registers 2

    .line 104
    iget-object v0, p0, Lcn/kuaipan/kss/a/d;->d:[B

    return-object v0
.end method

.method public d()I
    .registers 3

    .line 110
    iget-object v0, p0, Lcn/kuaipan/kss/a/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcn/kuaipan/kss/a/d;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x1

    return v0

    :cond_11
    :goto_11
    const/4 v0, 0x0

    return v0
.end method
