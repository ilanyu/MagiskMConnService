.class public Lcn/kuaipan/android/http/a/g;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "http.method.multipart.boundary"

.field private static final c:Ljava/lang/String; = "multipart/form-data"

.field private static d:[B


# instance fields
.field protected b:[Lcn/kuaipan/android/http/a/h;

.field private e:[B

.field private f:Lorg/apache/http/params/HttpParams;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 97
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/http/a/g;->d:[B

    return-void
.end method

.method public constructor <init>([Lcn/kuaipan/android/http/a/h;)V
    .registers 3

    .line 138
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcn/kuaipan/android/http/a/g;->g:Z

    const-string v0, "multipart/form-data"

    .line 139
    invoke-virtual {p0, v0}, Lcn/kuaipan/android/http/a/g;->setContentType(Ljava/lang/String;)V

    if-eqz p1, :cond_13

    .line 143
    iput-object p1, p0, Lcn/kuaipan/android/http/a/g;->b:[Lcn/kuaipan/android/http/a/h;

    const/4 p1, 0x0

    .line 144
    iput-object p1, p0, Lcn/kuaipan/android/http/a/g;->f:Lorg/apache/http/params/HttpParams;

    return-void

    .line 141
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "parts cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Lcn/kuaipan/android/http/a/h;Lorg/apache/http/params/HttpParams;)V
    .registers 4

    .line 127
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcn/kuaipan/android/http/a/g;->g:Z

    if-eqz p1, :cond_17

    if-eqz p2, :cond_f

    .line 134
    iput-object p1, p0, Lcn/kuaipan/android/http/a/g;->b:[Lcn/kuaipan/android/http/a/h;

    .line 135
    iput-object p2, p0, Lcn/kuaipan/android/http/a/g;->f:Lorg/apache/http/params/HttpParams;

    return-void

    .line 132
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "params cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "parts cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static c()[B
    .registers 5

    .line 103
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xb

    .line 104
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 106
    :goto_10
    array-length v3, v1

    if-ge v2, v3, :cond_23

    .line 107
    sget-object v3, Lcn/kuaipan/android/http/a/g;->d:[B

    sget-object v4, Lcn/kuaipan/android/http/a/g;->d:[B

    array-length v4, v4

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_23
    return-object v1
.end method


# virtual methods
.method public a([Lcn/kuaipan/android/http/a/h;)V
    .registers 6

    if-eqz p1, :cond_2b

    .line 172
    array-length v0, p1

    if-gtz v0, :cond_6

    goto :goto_2b

    .line 175
    :cond_6
    iget-object v0, p0, Lcn/kuaipan/android/http/a/g;->b:[Lcn/kuaipan/android/http/a/h;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcn/kuaipan/android/http/a/g;->b:[Lcn/kuaipan/android/http/a/h;

    array-length v0, v0

    if-gtz v0, :cond_10

    goto :goto_28

    .line 180
    :cond_10
    iget-object v0, p0, Lcn/kuaipan/android/http/a/g;->b:[Lcn/kuaipan/android/http/a/h;

    .line 181
    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [Lcn/kuaipan/android/http/a/h;

    iput-object v1, p0, Lcn/kuaipan/android/http/a/g;->b:[Lcn/kuaipan/android/http/a/h;

    .line 182
    iget-object v1, p0, Lcn/kuaipan/android/http/a/g;->b:[Lcn/kuaipan/android/http/a/h;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iget-object v1, p0, Lcn/kuaipan/android/http/a/g;->b:[Lcn/kuaipan/android/http/a/h;

    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 176
    :cond_28
    :goto_28
    iput-object p1, p0, Lcn/kuaipan/android/http/a/g;->b:[Lcn/kuaipan/android/http/a/h;

    return-void

    :cond_2b
    :goto_2b
    return-void
.end method

.method protected a()[B
    .registers 3

    .line 157
    iget-object v0, p0, Lcn/kuaipan/android/http/a/g;->e:[B

    if-nez v0, :cond_22

    const/4 v0, 0x0

    .line 159
    iget-object v1, p0, Lcn/kuaipan/android/http/a/g;->f:Lorg/apache/http/params/HttpParams;

    if-eqz v1, :cond_13

    .line 160
    iget-object v0, p0, Lcn/kuaipan/android/http/a/g;->f:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.method.multipart.boundary"

    invoke-interface {v0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_13
    if-eqz v0, :cond_1c

    .line 163
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/http/a/g;->e:[B

    goto :goto_22

    .line 165
    :cond_1c
    invoke-static {}, Lcn/kuaipan/android/http/a/g;->c()[B

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/http/a/g;->e:[B

    .line 168
    :cond_22
    :goto_22
    iget-object v0, p0, Lcn/kuaipan/android/http/a/g;->e:[B

    return-object v0
.end method

.method public b()[Lcn/kuaipan/android/http/a/h;
    .registers 5

    .line 187
    iget-object v0, p0, Lcn/kuaipan/android/http/a/g;->b:[Lcn/kuaipan/android/http/a/h;

    array-length v0, v0

    new-array v0, v0, [Lcn/kuaipan/android/http/a/h;

    .line 188
    iget-object v1, p0, Lcn/kuaipan/android/http/a/g;->b:[Lcn/kuaipan/android/http/a/h;

    iget-object v2, p0, Lcn/kuaipan/android/http/a/g;->b:[Lcn/kuaipan/android/http/a/h;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Lcn/kuaipan/android/http/a/g;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcn/kuaipan/android/http/a/g;->g:Z

    if-nez v0, :cond_b

    goto :goto_13

    .line 239
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content has been consumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lcn/kuaipan/android/http/a/g;->g:Z

    .line 243
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 244
    iget-object v1, p0, Lcn/kuaipan/android/http/a/g;->b:[Lcn/kuaipan/android/http/a/h;

    iget-object v2, p0, Lcn/kuaipan/android/http/a/g;->e:[B

    invoke-static {v0, v1, v2}, Lcn/kuaipan/android/http/a/h;->a(Ljava/io/OutputStream;[Lcn/kuaipan/android/http/a/h;[B)V

    .line 245
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method public getContentLength()J
    .registers 4

    .line 230
    :try_start_0
    iget-object v0, p0, Lcn/kuaipan/android/http/a/g;->b:[Lcn/kuaipan/android/http/a/h;

    invoke-virtual {p0}, Lcn/kuaipan/android/http/a/g;->a()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuaipan/android/http/a/h;->a([Lcn/kuaipan/android/http/a/h;[B)J

    move-result-wide v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-wide v0

    :catch_b
    move-exception v0

    const-string v1, "Multipart"

    const-string v2, "An exception occurred while getting the length of the parts"

    .line 232
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .registers 4

    .line 218
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "multipart/form-data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "; boundary="

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    invoke-virtual {p0}, Lcn/kuaipan/android/http/a/g;->a()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public isRepeatable()Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 197
    :goto_2
    iget-object v2, p0, Lcn/kuaipan/android/http/a/g;->b:[Lcn/kuaipan/android/http/a/h;

    array-length v2, v2

    if-ge v1, v2, :cond_15

    .line 198
    iget-object v2, p0, Lcn/kuaipan/android/http/a/g;->b:[Lcn/kuaipan/android/http/a/h;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcn/kuaipan/android/http/a/h;->i()Z

    move-result v2

    if-nez v2, :cond_12

    return v0

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcn/kuaipan/android/http/a/g;->b:[Lcn/kuaipan/android/http/a/h;

    invoke-virtual {p0}, Lcn/kuaipan/android/http/a/g;->a()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/kuaipan/android/http/a/h;->a(Ljava/io/OutputStream;[Lcn/kuaipan/android/http/a/h;[B)V

    return-void
.end method
