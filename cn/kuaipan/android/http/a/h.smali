.class public abstract Lcn/kuaipan/android/http/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B

.field protected static final e:Ljava/lang/String; = "----------------314159265358979323846"

.field protected static final f:[B

.field protected static final g:Ljava/lang/String; = "\r\n"

.field protected static final h:[B

.field protected static final i:Ljava/lang/String; = "\""

.field protected static final j:[B

.field protected static final k:Ljava/lang/String; = "--"

.field protected static final l:[B

.field protected static final m:Ljava/lang/String; = "Content-Disposition: form-data; name="

.field protected static final n:[B

.field protected static final o:Ljava/lang/String; = "Content-Type: "

.field protected static final p:[B

.field protected static final q:Ljava/lang/String; = "; charset="

.field protected static final r:[B

.field protected static final s:Ljava/lang/String; = "Content-Transfer-Encoding: "

.field protected static final t:[B


# instance fields
.field private b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "----------------314159265358979323846"

    .line 65
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/http/a/h;->f:[B

    .line 71
    sget-object v0, Lcn/kuaipan/android/http/a/h;->f:[B

    sput-object v0, Lcn/kuaipan/android/http/a/h;->a:[B

    const-string v0, "\r\n"

    .line 77
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/http/a/h;->h:[B

    const-string v0, "\""

    .line 83
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/http/a/h;->j:[B

    const-string v0, "--"

    .line 89
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/http/a/h;->l:[B

    const-string v0, "Content-Disposition: form-data; name="

    .line 96
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/http/a/h;->n:[B

    const-string v0, "Content-Type: "

    .line 102
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/http/a/h;->p:[B

    const-string v0, "; charset="

    .line 108
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/http/a/h;->r:[B

    const-string v0, "Content-Transfer-Encoding: "

    .line 115
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/http/a/h;->t:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Lcn/kuaipan/android/http/a/h;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    sget-object v0, Lcn/kuaipan/android/http/a/h;->a:[B

    invoke-static {p0, v0}, Lcn/kuaipan/android/http/a/h;->a([Lcn/kuaipan/android/http/a/h;[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a([Lcn/kuaipan/android/http/a/h;[B)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_33

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    .line 421
    :goto_6
    array-length v5, p0

    if-ge v0, v5, :cond_20

    .line 423
    aget-object v5, p0, v0

    invoke-virtual {v5, p1}, Lcn/kuaipan/android/http/a/h;->a([B)V

    .line 424
    aget-object v5, p0, v0

    invoke-virtual {v5}, Lcn/kuaipan/android/http/a/h;->j()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-gez v7, :cond_1b

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_1b
    const/4 v7, 0x0

    add-long/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 430
    :cond_20
    sget-object p0, Lcn/kuaipan/android/http/a/h;->l:[B

    array-length p0, p0

    int-to-long v0, p0

    add-long/2addr v3, v0

    .line 431
    array-length p0, p1

    int-to-long p0, p0

    add-long/2addr v3, p0

    .line 432
    sget-object p0, Lcn/kuaipan/android/http/a/h;->l:[B

    array-length p0, p0

    int-to-long p0, p0

    add-long/2addr v3, p0

    .line 433
    sget-object p0, Lcn/kuaipan/android/http/a/h;->h:[B

    array-length p0, p0

    int-to-long p0, p0

    add-long/2addr v3, p0

    return-wide v3

    .line 418
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parts may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/io/OutputStream;[Lcn/kuaipan/android/http/a/h;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    sget-object v0, Lcn/kuaipan/android/http/a/h;->a:[B

    invoke-static {p0, p1, v0}, Lcn/kuaipan/android/http/a/h;->a(Ljava/io/OutputStream;[Lcn/kuaipan/android/http/a/h;[B)V

    return-void
.end method

.method public static a(Ljava/io/OutputStream;[Lcn/kuaipan/android/http/a/h;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_33

    if-eqz p2, :cond_2b

    .line 381
    array-length v0, p2

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    .line 384
    :goto_8
    array-length v1, p1

    if-ge v0, v1, :cond_18

    .line 386
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Lcn/kuaipan/android/http/a/h;->a([B)V

    .line 387
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lcn/kuaipan/android/http/a/h;->h(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 389
    :cond_18
    sget-object p1, Lcn/kuaipan/android/http/a/h;->l:[B

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 390
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 391
    sget-object p1, Lcn/kuaipan/android/http/a/h;->l:[B

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 392
    sget-object p1, Lcn/kuaipan/android/http/a/h;->h:[B

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 382
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "partBoundary may not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 379
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parts may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    const-string v0, "----------------314159265358979323846"

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    sget-object v0, Lcn/kuaipan/android/http/a/h;->n:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 223
    sget-object v0, Lcn/kuaipan/android/http/a/h;->j:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 224
    invoke-virtual {p0}, Lcn/kuaipan/android/http/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 225
    sget-object v0, Lcn/kuaipan/android/http/a/h;->j:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method a([B)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcn/kuaipan/android/http/a/h;->b:[B

    return-void
.end method

.method protected abstract b()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract b(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected c(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    sget-object v0, Lcn/kuaipan/android/http/a/h;->l:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 210
    invoke-virtual {p0}, Lcn/kuaipan/android/http/a/h;->h()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 211
    sget-object v0, Lcn/kuaipan/android/http/a/h;->h:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method protected d(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    invoke-virtual {p0}, Lcn/kuaipan/android/http/a/h;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 238
    sget-object v1, Lcn/kuaipan/android/http/a/h;->h:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 239
    sget-object v1, Lcn/kuaipan/android/http/a/h;->p:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 240
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 241
    invoke-virtual {p0}, Lcn/kuaipan/android/http/a/h;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 243
    sget-object v1, Lcn/kuaipan/android/http/a/h;->r:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 244
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_29
    return-void
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method protected e(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcn/kuaipan/android/http/a/h;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 259
    sget-object v1, Lcn/kuaipan/android/http/a/h;->h:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 260
    sget-object v1, Lcn/kuaipan/android/http/a/h;->t:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 261
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_17
    return-void
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method protected f(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    sget-object v0, Lcn/kuaipan/android/http/a/h;->h:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 274
    sget-object v0, Lcn/kuaipan/android/http/a/h;->h:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method protected g(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    sget-object v0, Lcn/kuaipan/android/http/a/h;->h:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public h(Ljava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-virtual {p0, p1}, Lcn/kuaipan/android/http/a/h;->c(Ljava/io/OutputStream;)V

    .line 314
    invoke-virtual {p0, p1}, Lcn/kuaipan/android/http/a/h;->a(Ljava/io/OutputStream;)V

    .line 315
    invoke-virtual {p0, p1}, Lcn/kuaipan/android/http/a/h;->d(Ljava/io/OutputStream;)V

    .line 316
    invoke-virtual {p0, p1}, Lcn/kuaipan/android/http/a/h;->e(Ljava/io/OutputStream;)V

    .line 317
    invoke-virtual {p0, p1}, Lcn/kuaipan/android/http/a/h;->f(Ljava/io/OutputStream;)V

    .line 318
    invoke-virtual {p0, p1}, Lcn/kuaipan/android/http/a/h;->b(Ljava/io/OutputStream;)V

    .line 319
    invoke-virtual {p0, p1}, Lcn/kuaipan/android/http/a/h;->g(Ljava/io/OutputStream;)V

    return-void
.end method

.method protected h()[B
    .registers 2

    .line 170
    iget-object v0, p0, Lcn/kuaipan/android/http/a/h;->b:[B

    if-nez v0, :cond_7

    .line 172
    sget-object v0, Lcn/kuaipan/android/http/a/h;->a:[B

    return-object v0

    .line 174
    :cond_7
    iget-object v0, p0, Lcn/kuaipan/android/http/a/h;->b:[B

    return-object v0
.end method

.method public i()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public j()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    invoke-virtual {p0}, Lcn/kuaipan/android/http/a/h;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    const-wide/16 v0, -0x1

    return-wide v0

    .line 334
    :cond_d
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 335
    invoke-virtual {p0, v0}, Lcn/kuaipan/android/http/a/h;->c(Ljava/io/OutputStream;)V

    .line 336
    invoke-virtual {p0, v0}, Lcn/kuaipan/android/http/a/h;->a(Ljava/io/OutputStream;)V

    .line 337
    invoke-virtual {p0, v0}, Lcn/kuaipan/android/http/a/h;->d(Ljava/io/OutputStream;)V

    .line 338
    invoke-virtual {p0, v0}, Lcn/kuaipan/android/http/a/h;->e(Ljava/io/OutputStream;)V

    .line 339
    invoke-virtual {p0, v0}, Lcn/kuaipan/android/http/a/h;->f(Ljava/io/OutputStream;)V

    .line 340
    invoke-virtual {p0, v0}, Lcn/kuaipan/android/http/a/h;->g(Ljava/io/OutputStream;)V

    .line 341
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcn/kuaipan/android/http/a/h;->b()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 352
    invoke-virtual {p0}, Lcn/kuaipan/android/http/a/h;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
