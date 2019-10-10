.class public Lcn/kuaipan/kss/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;


# instance fields
.field private a:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:[B

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:[Z

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    sget-object v0, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;->a:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

    iput-object v0, p0, Lcn/kuaipan/kss/a/c;->a:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcn/kuaipan/kss/a/c;->b:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lcn/kuaipan/kss/a/c;->c:[Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lcn/kuaipan/kss/a/c;->d:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcn/kuaipan/kss/a/c;->e:[B

    .line 124
    iput-object v0, p0, Lcn/kuaipan/kss/a/c;->f:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcn/kuaipan/kss/a/c;->g:[Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lcn/kuaipan/kss/a/c;->h:[Z

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcn/kuaipan/kss/a/c;->i:I

    return-void
.end method

.method private b(Lorg/json/JSONObject;)Z
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "stat"

    .line 142
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FILE_EXISTED"

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    .line 144
    sget-object v1, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;->b:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

    iput-object v1, p0, Lcn/kuaipan/kss/a/c;->a:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

    const-string v1, "stoid"

    .line 145
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/kuaipan/kss/a/c;->b:Ljava/lang/String;

    return v2

    .line 150
    :cond_1d
    sget-object v1, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;->a:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

    iput-object v1, p0, Lcn/kuaipan/kss/a/c;->a:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

    const-string v1, ""

    .line 151
    iput-object v1, p0, Lcn/kuaipan/kss/a/c;->b:Ljava/lang/String;

    const-string v1, "node_urls"

    .line 154
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v3, v2, :cond_32

    return v0

    .line 160
    :cond_32
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcn/kuaipan/kss/a/c;->c:[Ljava/lang/String;

    const/4 v3, 0x0

    .line 161
    :goto_3b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_68

    .line 162
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "://"

    .line 163
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 165
    iget-object v6, p0, Lcn/kuaipan/kss/a/c;->d:Ljava/lang/String;

    if-nez v6, :cond_57

    if-lez v5, :cond_57

    .line 166
    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcn/kuaipan/kss/a/c;->d:Ljava/lang/String;

    .line 169
    :cond_57
    iget-object v6, p0, Lcn/kuaipan/kss/a/c;->c:[Ljava/lang/String;

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_68
    const-string v1, "secure_key"

    .line 173
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-static {v1}, Lcn/kuaipan/kss/c/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcn/kuaipan/kss/a/c;->e:[B

    const-string v1, "file_meta"

    .line 177
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/kuaipan/kss/a/c;->f:Ljava/lang/String;

    const-string v1, "block_metas"

    .line 180
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcn/kuaipan/kss/a/c;->g:[Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcn/kuaipan/kss/a/c;->h:[Z

    const/4 v1, 0x0

    .line 184
    :goto_93
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_c6

    .line 185
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "is_existed"

    .line 188
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 189
    iget-object v5, p0, Lcn/kuaipan/kss/a/c;->h:[Z

    if-nez v4, :cond_a9

    const/4 v4, 0x0

    goto :goto_aa

    :cond_a9
    const/4 v4, 0x1

    :goto_aa
    aput-boolean v4, v5, v1

    if-eqz v4, :cond_b9

    .line 191
    iget-object v4, p0, Lcn/kuaipan/kss/a/c;->g:[Ljava/lang/String;

    const-string v5, "commit_meta"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    goto :goto_c3

    .line 194
    :cond_b9
    iget-object v4, p0, Lcn/kuaipan/kss/a/c;->g:[Ljava/lang/String;

    const-string v5, "block_meta"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1
    :try_end_c3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_c3} :catch_c7

    :goto_c3
    add-int/lit8 v1, v1, 0x1

    goto :goto_93

    :cond_c6
    return v2

    :catch_c7
    move-exception p1

    .line 198
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return v0
.end method

.method public static j()Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;
    .registers 1

    .line 206
    invoke-static {}, Lcn/kuaipan/kss/a/e;->j()Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .registers 2

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcn/kuaipan/kss/a/c;->c:[Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcn/kuaipan/kss/a/c;->d:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Lcn/kuaipan/kss/a/c;->e:[B

    .line 133
    iput-object v0, p0, Lcn/kuaipan/kss/a/c;->f:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lcn/kuaipan/kss/a/c;->g:[Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lcn/kuaipan/kss/a/c;->h:[Z

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lcn/kuaipan/kss/a/c;->i:I

    return-void
.end method


# virtual methods
.method public a()Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .registers 2

    .line 17
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 3

    .line 42
    iget-object p1, p0, Lcn/kuaipan/kss/a/c;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .line 96
    invoke-direct {p0}, Lcn/kuaipan/kss/a/c;->k()V

    .line 99
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_d

    .line 105
    invoke-direct {p0, v0}, Lcn/kuaipan/kss/a/c;->b(Lorg/json/JSONObject;)Z

    move-result p1

    return p1

    :catch_d
    move-exception p1

    .line 101
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lorg/json/JSONObject;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 113
    :cond_4
    invoke-direct {p0, p1}, Lcn/kuaipan/kss/a/c;->b(Lorg/json/JSONObject;)Z

    move-result p1

    return p1
.end method

.method public b()Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;
    .registers 2

    .line 23
    iget-object v0, p0, Lcn/kuaipan/kss/a/c;->a:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

    return-object v0
.end method

.method public b(I)Z
    .registers 3

    .line 81
    iget-object v0, p0, Lcn/kuaipan/kss/a/c;->g:[Ljava/lang/String;

    if-eqz v0, :cond_10

    if-ltz p1, :cond_10

    iget-object v0, p0, Lcn/kuaipan/kss/a/c;->g:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_10

    .line 84
    iget-object v0, p0, Lcn/kuaipan/kss/a/c;->h:[Z

    aget-boolean p1, v0, p1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcn/kuaipan/kss/a/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)Ljava/lang/String;
    .registers 3

    .line 71
    iget-object v0, p0, Lcn/kuaipan/kss/a/c;->g:[Ljava/lang/String;

    if-eqz v0, :cond_10

    if-ltz p1, :cond_10

    iget-object v0, p0, Lcn/kuaipan/kss/a/c;->g:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_10

    .line 74
    iget-object v0, p0, Lcn/kuaipan/kss/a/c;->g:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()I
    .registers 2

    .line 35
    iget-object v0, p0, Lcn/kuaipan/kss/a/c;->c:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcn/kuaipan/kss/a/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()[B
    .registers 2

    .line 52
    iget-object v0, p0, Lcn/kuaipan/kss/a/c;->e:[B

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcn/kuaipan/kss/a/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .registers 2

    .line 62
    iget-object v0, p0, Lcn/kuaipan/kss/a/c;->g:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 65
    :cond_6
    iget-object v0, p0, Lcn/kuaipan/kss/a/c;->g:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public i()I
    .registers 2

    .line 91
    iget v0, p0, Lcn/kuaipan/kss/a/c;->i:I

    return v0
.end method
