.class public Lcn/kuaipan/android/http/a/d;
.super Lcn/kuaipan/android/http/a/i;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "application/octet-stream"

.field public static final b:Ljava/lang/String; = "ISO-8859-1"

.field public static final c:Ljava/lang/String; = "binary"

.field protected static final d:Ljava/lang/String; = "; filename="

.field private static final u:[B


# instance fields
.field private v:Lcn/kuaipan/android/http/a/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "; filename="

    .line 69
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/http/a/d;->u:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/kuaipan/android/http/a/j;)V
    .registers 4

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2, v0, v0}, Lcn/kuaipan/android/http/a/d;-><init>(Ljava/lang/String;Lcn/kuaipan/android/http/a/j;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/kuaipan/android/http/a/j;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-nez p3, :cond_4

    const-string p3, "application/octet-stream"

    :cond_4
    if-nez p4, :cond_8

    const-string p4, "ISO-8859-1"

    :cond_8
    const-string v0, "binary"

    .line 86
    invoke-direct {p0, p1, p3, p4, v0}, Lcn/kuaipan/android/http/a/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_12

    .line 92
    iput-object p2, p0, Lcn/kuaipan/android/http/a/d;->v:Lcn/kuaipan/android/http/a/j;

    return-void

    .line 90
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Source may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 114
    new-instance v0, Lcn/kuaipan/android/http/a/e;

    invoke-direct {v0, p2}, Lcn/kuaipan/android/http/a/e;-><init>(Ljava/io/File;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2, p2}, Lcn/kuaipan/android/http/a/d;-><init>(Ljava/lang/String;Lcn/kuaipan/android/http/a/j;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 131
    new-instance v0, Lcn/kuaipan/android/http/a/e;

    invoke-direct {v0, p2}, Lcn/kuaipan/android/http/a/e;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcn/kuaipan/android/http/a/d;-><init>(Ljava/lang/String;Lcn/kuaipan/android/http/a/j;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 144
    new-instance v0, Lcn/kuaipan/android/http/a/e;

    invoke-direct {v0, p2, p3}, Lcn/kuaipan/android/http/a/e;-><init>(Ljava/lang/String;Ljava/io/File;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2, p2}, Lcn/kuaipan/android/http/a/d;-><init>(Ljava/lang/String;Lcn/kuaipan/android/http/a/j;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 162
    new-instance v0, Lcn/kuaipan/android/http/a/e;

    invoke-direct {v0, p2, p3}, Lcn/kuaipan/android/http/a/e;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {p0, p1, v0, p4, p5}, Lcn/kuaipan/android/http/a/d;-><init>(Ljava/lang/String;Lcn/kuaipan/android/http/a/j;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 5

    .line 173
    new-instance v0, Lcn/kuaipan/android/http/a/a;

    invoke-direct {v0, p2, p3}, Lcn/kuaipan/android/http/a/a;-><init>(Ljava/lang/String;[B)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2, p2}, Lcn/kuaipan/android/http/a/d;-><init>(Ljava/lang/String;Lcn/kuaipan/android/http/a/j;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 188
    new-instance v0, Lcn/kuaipan/android/http/a/a;

    invoke-direct {v0, p2, p3}, Lcn/kuaipan/android/http/a/a;-><init>(Ljava/lang/String;[B)V

    invoke-direct {p0, p1, v0, p4, p5}, Lcn/kuaipan/android/http/a/d;-><init>(Ljava/lang/String;Lcn/kuaipan/android/http/a/j;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()Lcn/kuaipan/android/http/a/j;
    .registers 2

    .line 250
    iget-object v0, p0, Lcn/kuaipan/android/http/a/d;->v:Lcn/kuaipan/android/http/a/j;

    return-object v0
.end method

.method protected a(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    invoke-super {p0, p1}, Lcn/kuaipan/android/http/a/i;->a(Ljava/io/OutputStream;)V

    .line 202
    iget-object v0, p0, Lcn/kuaipan/android/http/a/d;->v:Lcn/kuaipan/android/http/a/j;

    invoke-interface {v0}, Lcn/kuaipan/android/http/a/j;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 204
    sget-object v1, Lcn/kuaipan/android/http/a/d;->u:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 205
    sget-object v1, Lcn/kuaipan/android/http/a/d;->j:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 206
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 207
    sget-object v0, Lcn/kuaipan/android/http/a/d;->j:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_21
    return-void
.end method

.method protected b()J
    .registers 3

    .line 262
    iget-object v0, p0, Lcn/kuaipan/android/http/a/d;->v:Lcn/kuaipan/android/http/a/j;

    invoke-interface {v0}, Lcn/kuaipan/android/http/a/j;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method protected b(Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lcn/kuaipan/android/http/a/d;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const-string p1, "FilePart"

    const-string v0, "No data to send."

    .line 226
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    const/16 v0, 0x1000

    .line 230
    new-array v0, v0, [B

    .line 231
    iget-object v1, p0, Lcn/kuaipan/android/http/a/d;->v:Lcn/kuaipan/android/http/a/j;

    invoke-interface {v1}, Lcn/kuaipan/android/http/a/j;->c()Ljava/io/InputStream;

    move-result-object v1

    .line 234
    :goto_1c
    :try_start_1c
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_27

    const/4 v3, 0x0

    .line 235
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_2b

    goto :goto_1c

    .line 239
    :cond_27
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw p1
.end method
