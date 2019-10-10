.class public Lcn/kuaipan/android/utils/p;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/RandomAccessFile;

.field private final b:Ljava/io/File;

.field private c:J

.field private d:J

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcn/kuaipan/android/utils/p;->c:J

    .line 16
    iput-wide v0, p0, Lcn/kuaipan/android/utils/p;->d:J

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcn/kuaipan/android/utils/p;->e:Z

    .line 21
    iput-object p1, p0, Lcn/kuaipan/android/utils/p;->b:Ljava/io/File;

    .line 22
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/kuaipan/android/utils/p;->a:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()J
    .registers 3

    monitor-enter p0

    .line 58
    :try_start_1
    iget-wide v0, p0, Lcn/kuaipan/android/utils/p;->c:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 49
    :try_start_1
    iget-object v0, p0, Lcn/kuaipan/android/utils/p;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_14

    .line 50
    iget-object v0, p0, Lcn/kuaipan/android/utils/p;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 51
    iput-wide p1, p0, Lcn/kuaipan/android/utils/p;->c:J
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1c

    .line 55
    monitor-exit p0

    return-void

    .line 53
    :cond_14
    :try_start_14
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Seek possion is not availabel"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception p1

    .line 48
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized available()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 39
    :try_start_1
    iget-object v0, p0, Lcn/kuaipan/android/utils/p;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/kuaipan/android/utils/p;->c:J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_e

    const/4 v4, 0x0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 44
    :try_start_1
    iget-object v0, p0, Lcn/kuaipan/android/utils/p;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcn/kuaipan/android/utils/p;->e:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 46
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    .line 43
    monitor-exit p0

    throw v0
.end method

.method public mark(I)V
    .registers 4

    .line 63
    iget-boolean p1, p0, Lcn/kuaipan/android/utils/p;->e:Z

    if-nez p1, :cond_8

    .line 64
    iget-wide v0, p0, Lcn/kuaipan/android/utils/p;->c:J

    iput-wide v0, p0, Lcn/kuaipan/android/utils/p;->d:J

    :cond_8
    return-void
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 27
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 30
    iget-object v0, p0, Lcn/kuaipan/android/utils/p;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    if-ltz v0, :cond_1a

    .line 32
    iget-wide v1, p0, Lcn/kuaipan/android/utils/p;->c:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcn/kuaipan/android/utils/p;->c:J
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_22

    .line 34
    :cond_1a
    monitor-exit p0

    return v0

    .line 28
    :cond_1c
    :try_start_1c
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v0

    .line 26
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([B)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 75
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 79
    iget-object v0, p0, Lcn/kuaipan/android/utils/p;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p1

    if-lez p1, :cond_19

    .line 81
    iget-wide v0, p0, Lcn/kuaipan/android/utils/p;->c:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/kuaipan/android/utils/p;->c:J
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_21

    .line 83
    :cond_19
    monitor-exit p0

    return p1

    .line 76
    :cond_1b
    :try_start_1b
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p1

    .line 74
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 89
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 93
    iget-object v0, p0, Lcn/kuaipan/android/utils/p;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    if-lez p1, :cond_19

    .line 95
    iget-wide p2, p0, Lcn/kuaipan/android/utils/p;->c:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcn/kuaipan/android/utils/p;->c:J
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_21

    .line 97
    :cond_19
    monitor-exit p0

    return p1

    .line 90
    :cond_1b
    :try_start_1b
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p1

    .line 88
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 102
    :try_start_1
    iget-boolean v0, p0, Lcn/kuaipan/android/utils/p;->e:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcn/kuaipan/android/utils/p;->e:Z

    .line 104
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcn/kuaipan/android/utils/p;->b:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/kuaipan/android/utils/p;->a:Ljava/io/RandomAccessFile;

    .line 107
    :cond_13
    iget-object v0, p0, Lcn/kuaipan/android/utils/p;->a:Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Lcn/kuaipan/android/utils/p;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 108
    iget-wide v0, p0, Lcn/kuaipan/android/utils/p;->d:J

    iput-wide v0, p0, Lcn/kuaipan/android/utils/p;->c:J
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 109
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    .line 101
    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-wide v0

    :cond_7
    if-ltz v2, :cond_48

    const-wide/16 v2, 0x2000

    cmp-long v2, p1, v2

    if-gez v2, :cond_11

    long-to-int v2, p1

    goto :goto_13

    :cond_11
    const/16 v2, 0x2000

    .line 124
    :goto_13
    monitor-enter p0

    int-to-long v3, v2

    .line 125
    :try_start_15
    div-long/2addr p1, v3

    move-wide v5, v0

    :goto_17
    cmp-long v7, p1, v0

    if-ltz v7, :cond_43

    .line 126
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_3d

    .line 130
    iget-object v7, p0, Lcn/kuaipan/android/utils/p;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v7, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    .line 132
    iget-wide v9, p0, Lcn/kuaipan/android/utils/p;->c:J

    const/4 v11, 0x0

    add-long/2addr v9, v7

    iput-wide v9, p0, Lcn/kuaipan/android/utils/p;->c:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_39

    .line 134
    monitor-exit p0

    return-wide v5

    :cond_39
    const-wide/16 v7, 0x1

    sub-long/2addr p1, v7

    goto :goto_17

    .line 127
    :cond_3d
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 137
    :cond_43
    monitor-exit p0

    return-wide v5

    :catchall_45
    move-exception p1

    .line 138
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_15 .. :try_end_47} :catchall_45

    throw p1

    .line 118
    :cond_48
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Number of bytes to skip cannot be negative"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
