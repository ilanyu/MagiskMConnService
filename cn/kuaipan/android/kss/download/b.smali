.class public Lcn/kuaipan/android/kss/download/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/RandomAccessFile;

.field private b:Z

.field private c:Ljava/nio/channels/FileLock;

.field private final d:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcn/kuaipan/android/kss/download/b;->b:Z

    .line 20
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/android/kss/download/b;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 24
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rws"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/kuaipan/android/kss/download/b;->a:Ljava/io/RandomAccessFile;

    .line 26
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/b;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/kss/download/b;->c:Ljava/nio/channels/FileLock;

    .line 28
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/b;->c:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_27

    return-void

    .line 29
    :cond_27
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed Lock the target file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a([BIILcn/kuaipan/android/kss/download/d;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/download/b;->b:Z

    if-nez v0, :cond_41

    .line 60
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 64
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/b;->a()V

    if-eqz p4, :cond_29

    .line 67
    :try_start_13
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/b;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p4}, Lcn/kuaipan/android/kss/download/d;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    int-to-long v0, p3

    .line 68
    invoke-virtual {p4}, Lcn/kuaipan/android/kss/download/d;->d()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    goto :goto_29

    :catchall_27
    move-exception p1

    goto :goto_37

    .line 70
    :cond_29
    :goto_29
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/b;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    if-eqz p4, :cond_33

    .line 72
    invoke-virtual {p4, p3}, Lcn/kuaipan/android/kss/download/d;->a(I)V
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_27

    .line 76
    :cond_33
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/b;->b()V

    return p3

    :goto_37
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/b;->b()V

    throw p1

    .line 61
    :cond_3b
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 57
    :cond_41
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public a(JJ)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/download/b;->b:Z

    if-nez v0, :cond_16

    .line 45
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/b;->a()V

    .line 47
    :try_start_7
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/b;->a:Ljava/io/RandomAccessFile;

    invoke-static {v0, p1, p2, p3, p4}, Lcn/kuaipan/android/utils/b;->a(Ljava/io/RandomAccessFile;JJ)Ljava/lang/String;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 49
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/b;->b()V

    return-object p1

    :catchall_11
    move-exception p1

    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/b;->b()V

    throw p1

    .line 43
    :cond_16
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public a()V
    .registers 2

    .line 34
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/b;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public a(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/download/b;->b:Z

    if-nez v0, :cond_1e

    .line 85
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/b;->a()V

    .line 87
    :try_start_7
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/b;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x1

    sub-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 88
    iget-object p1, p0, Lcn/kuaipan/android/kss/download/b;->a:Ljava/io/RandomAccessFile;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->write(I)V
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_19

    .line 90
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/b;->b()V

    return-void

    :catchall_19
    move-exception p1

    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/b;->b()V

    throw p1

    .line 82
    :cond_1e
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public b()V
    .registers 2

    .line 38
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/b;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public c()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/download/b;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcn/kuaipan/android/kss/download/b;->b:Z

    const/4 v0, 0x0

    .line 101
    :try_start_9
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/b;->c:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_14

    .line 102
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/b;->c:Ljava/nio/channels/FileLock;

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 103
    iput-object v0, p0, Lcn/kuaipan/android/kss/download/b;->c:Ljava/nio/channels/FileLock;
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_20

    .line 106
    :cond_14
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/b;->a:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1f

    .line 107
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/b;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 108
    iput-object v0, p0, Lcn/kuaipan/android/kss/download/b;->a:Ljava/io/RandomAccessFile;

    :cond_1f
    return-void

    :catchall_20
    move-exception v1

    .line 106
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/b;->a:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_2c

    .line 107
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/b;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 108
    iput-object v0, p0, Lcn/kuaipan/android/kss/download/b;->a:Ljava/io/RandomAccessFile;

    :cond_2c
    throw v1
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcn/kuaipan/android/kss/download/b;->c()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 118
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
