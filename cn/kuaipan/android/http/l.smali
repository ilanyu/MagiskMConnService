.class public Lcn/kuaipan/android/http/l;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private final a:Lcn/kuaipan/android/http/i;

.field private final b:Lcn/kuaipan/android/http/IKscTransferListener;

.field private final c:Lcn/kuaipan/android/http/KssTransferStopper;

.field private final d:Z

.field private e:J

.field private f:J


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;Lcn/kuaipan/android/http/i;Lcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;Z)V
    .registers 8

    .line 31
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcn/kuaipan/android/http/l;->e:J

    .line 17
    iput-wide v0, p0, Lcn/kuaipan/android/http/l;->f:J

    .line 32
    iput-object p2, p0, Lcn/kuaipan/android/http/l;->a:Lcn/kuaipan/android/http/i;

    .line 33
    iput-object p3, p0, Lcn/kuaipan/android/http/l;->b:Lcn/kuaipan/android/http/IKscTransferListener;

    .line 34
    iput-object p4, p0, Lcn/kuaipan/android/http/l;->c:Lcn/kuaipan/android/http/KssTransferStopper;

    .line 35
    iput-boolean p5, p0, Lcn/kuaipan/android/http/l;->d:Z

    return-void
.end method

.method protected constructor <init>(Ljava/io/InputStream;Lcn/kuaipan/android/http/i;Lcn/kuaipan/android/http/IKscTransferListener;Z)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 23
    invoke-direct/range {v0 .. v5}, Lcn/kuaipan/android/http/l;-><init>(Ljava/io/InputStream;Lcn/kuaipan/android/http/i;Lcn/kuaipan/android/http/IKscTransferListener;Lcn/kuaipan/android/http/KssTransferStopper;Z)V

    return-void
.end method

.method private a(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcn/kuaipan/android/http/l;->c:Lcn/kuaipan/android/http/KssTransferStopper;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcn/kuaipan/android/http/l;->c:Lcn/kuaipan/android/http/KssTransferStopper;

    invoke-interface {v0}, Lcn/kuaipan/android/http/KssTransferStopper;->a()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1a

    .line 41
    :cond_d
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcn/kuaipan/android/a/g;

    invoke-direct {p2}, Lcn/kuaipan/android/a/g;-><init>()V

    const-string v0, "@ ProcessMonitorInput::process()"

    invoke-direct {p1, v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1a
    :goto_1a
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_41

    .line 45
    iget-wide v0, p0, Lcn/kuaipan/android/http/l;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/kuaipan/android/http/l;->e:J

    .line 46
    iget-object v0, p0, Lcn/kuaipan/android/http/l;->a:Lcn/kuaipan/android/http/i;

    if-eqz v0, :cond_2e

    .line 47
    iget-object v0, p0, Lcn/kuaipan/android/http/l;->a:Lcn/kuaipan/android/http/i;

    invoke-virtual {v0, p1, p2}, Lcn/kuaipan/android/http/i;->a(J)V

    .line 49
    :cond_2e
    iget-object v0, p0, Lcn/kuaipan/android/http/l;->b:Lcn/kuaipan/android/http/IKscTransferListener;

    if-eqz v0, :cond_41

    .line 50
    iget-boolean v0, p0, Lcn/kuaipan/android/http/l;->d:Z

    if-eqz v0, :cond_3c

    .line 51
    iget-object v0, p0, Lcn/kuaipan/android/http/l;->b:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-interface {v0, p1, p2}, Lcn/kuaipan/android/http/IKscTransferListener;->e(J)V

    goto :goto_41

    .line 53
    :cond_3c
    iget-object v0, p0, Lcn/kuaipan/android/http/l;->b:Lcn/kuaipan/android/http/IKscTransferListener;

    invoke-interface {v0, p1, p2}, Lcn/kuaipan/android/http/IKscTransferListener;->f(J)V

    :cond_41
    :goto_41
    return-void
.end method


# virtual methods
.method public declared-synchronized mark(I)V
    .registers 4

    monitor-enter p0

    .line 88
    :try_start_1
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    .line 89
    iget-wide v0, p0, Lcn/kuaipan/android/http/l;->e:J

    iput-wide v0, p0, Lcn/kuaipan/android/http/l;->f:J
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 90
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    .line 87
    monitor-exit p0

    throw p1
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const-wide/16 v1, 0x1

    .line 63
    invoke-direct {p0, v1, v2}, Lcn/kuaipan/android/http/l;->a(J)V

    :cond_c
    return v0
.end method

.method public read([BII)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_a

    int-to-long p2, p1

    .line 72
    invoke-direct {p0, p2, p3}, Lcn/kuaipan/android/http/l;->a(J)V

    :cond_a
    return p1
.end method

.method public declared-synchronized reset()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 94
    :try_start_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    .line 95
    iget-wide v0, p0, Lcn/kuaipan/android/http/l;->f:J

    iput-wide v0, p0, Lcn/kuaipan/android/http/l;->e:J

    .line 97
    iget-object v0, p0, Lcn/kuaipan/android/http/l;->b:Lcn/kuaipan/android/http/IKscTransferListener;

    if-eqz v0, :cond_1f

    .line 98
    iget-boolean v0, p0, Lcn/kuaipan/android/http/l;->d:Z

    if-eqz v0, :cond_18

    .line 99
    iget-object v0, p0, Lcn/kuaipan/android/http/l;->b:Lcn/kuaipan/android/http/IKscTransferListener;

    iget-wide v1, p0, Lcn/kuaipan/android/http/l;->e:J

    invoke-interface {v0, v1, v2}, Lcn/kuaipan/android/http/IKscTransferListener;->c(J)V

    goto :goto_1f

    .line 101
    :cond_18
    iget-object v0, p0, Lcn/kuaipan/android/http/l;->b:Lcn/kuaipan/android/http/IKscTransferListener;

    iget-wide v1, p0, Lcn/kuaipan/android/http/l;->e:J

    invoke-interface {v0, v1, v2}, Lcn/kuaipan/android/http/IKscTransferListener;->d(J)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 104
    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    .line 93
    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_d

    .line 81
    invoke-direct {p0, p1, p2}, Lcn/kuaipan/android/http/l;->a(J)V

    :cond_d
    return-wide p1
.end method
