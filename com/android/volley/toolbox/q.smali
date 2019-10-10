.class public Lcom/android/volley/toolbox/q;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# static fields
.field private static final a:I = 0x100


# instance fields
.field private final b:Lcom/android/volley/toolbox/f;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/f;)V
    .registers 3

    const/16 v0, 0x100

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/q;-><init>(Lcom/android/volley/toolbox/f;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/f;I)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/volley/toolbox/q;->b:Lcom/android/volley/toolbox/f;

    .line 53
    iget-object p1, p0, Lcom/android/volley/toolbox/q;->b:Lcom/android/volley/toolbox/f;

    const/16 v0, 0x100

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/volley/toolbox/f;->a(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/volley/toolbox/q;->buf:[B

    return-void
.end method

.method private a(I)V
    .registers 5

    .line 72
    iget v0, p0, Lcom/android/volley/toolbox/q;->count:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/volley/toolbox/q;->buf:[B

    array-length v1, v1

    if-gt v0, v1, :cond_9

    return-void

    .line 75
    :cond_9
    iget-object v0, p0, Lcom/android/volley/toolbox/q;->b:Lcom/android/volley/toolbox/f;

    iget v1, p0, Lcom/android/volley/toolbox/q;->count:I

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/f;->a(I)[B

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/android/volley/toolbox/q;->buf:[B

    iget v1, p0, Lcom/android/volley/toolbox/q;->count:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iget-object v0, p0, Lcom/android/volley/toolbox/q;->b:Lcom/android/volley/toolbox/f;

    iget-object v1, p0, Lcom/android/volley/toolbox/q;->buf:[B

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/f;->a([B)V

    .line 78
    iput-object p1, p0, Lcom/android/volley/toolbox/q;->buf:[B

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/volley/toolbox/q;->b:Lcom/android/volley/toolbox/f;

    iget-object v1, p0, Lcom/android/volley/toolbox/q;->buf:[B

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/f;->a([B)V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/android/volley/toolbox/q;->buf:[B

    .line 60
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void
.end method

.method public finalize()V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/android/volley/toolbox/q;->b:Lcom/android/volley/toolbox/f;

    iget-object v1, p0, Lcom/android/volley/toolbox/q;->buf:[B

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/f;->a([B)V

    return-void
.end method

.method public declared-synchronized write(I)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 89
    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/q;->a(I)V

    .line 90
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    .line 91
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    .line 88
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .registers 4

    monitor-enter p0

    .line 83
    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/volley/toolbox/q;->a(I)V

    .line 84
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 85
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    .line 82
    monitor-exit p0

    throw p1
.end method
