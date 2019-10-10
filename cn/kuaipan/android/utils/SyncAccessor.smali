.class public Lcn/kuaipan/android/utils/SyncAccessor;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/android/utils/SyncAccessor$Args;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a()Z
    .registers 3

    .line 89
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/SyncAccessor;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 93
    :cond_8
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 94
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x1

    return v0

    :cond_17
    :goto_17
    return v1
.end method


# virtual methods
.method public varargs a(I[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs declared-synchronized b(I[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 60
    :try_start_1
    invoke-static {}, Lcn/kuaipan/android/utils/SyncAccessor$Args;->a()Lcn/kuaipan/android/utils/SyncAccessor$Args;

    move-result-object v0

    .line 61
    iput-object p2, v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->b:[Ljava/lang/Object;

    .line 63
    invoke-virtual {p0, p1, v0}, Lcn/kuaipan/android/utils/SyncAccessor;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/kuaipan/android/utils/SyncAccessor;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 64
    :goto_11
    iget-boolean p1, v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->a:Z

    if-nez p1, :cond_2e

    .line 65
    invoke-direct {p0}, Lcn/kuaipan/android/utils/SyncAccessor;->a()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 69
    monitor-enter v0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_42

    const-wide/16 p1, 0x32

    .line 70
    :try_start_1e
    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 71
    monitor-exit v0

    goto :goto_11

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_23

    :try_start_25
    throw p1

    .line 66
    :cond_26
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "SyncAccessor has dead."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_2e
    iget-object p1, v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->c:Ljava/lang/Object;

    .line 78
    iget-object p2, v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->d:Ljava/lang/RuntimeException;

    .line 79
    invoke-virtual {v0}, Lcn/kuaipan/android/utils/SyncAccessor$Args;->b()V
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_42

    if-nez p2, :cond_39

    .line 85
    monitor-exit p0

    return-object p1

    .line 82
    :cond_39
    :try_start_39
    throw p2

    .line 74
    :cond_3a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "SyncAccessor has dead."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception p1

    .line 59
    monitor-exit p0

    throw p1
.end method

.method public dispatchMessage(Landroid/os/Message;)V
    .registers 5

    .line 105
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3b

    .line 106
    instance-of v1, v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;

    if-eqz v1, :cond_3b

    .line 107
    check-cast v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;

    const/4 v1, 0x1

    .line 110
    :try_start_b
    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v2, v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->b:[Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lcn/kuaipan/android/utils/SyncAccessor;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->c:Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_15} :catch_22
    .catchall {:try_start_b .. :try_end_15} :catchall_20

    .line 114
    iput-boolean v1, v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->a:Z

    .line 115
    monitor-enter v0

    .line 116
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 117
    monitor-exit v0

    goto :goto_3e

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_1d

    throw p1

    :catchall_20
    move-exception p1

    goto :goto_30

    :catch_22
    move-exception p1

    .line 112
    :try_start_23
    iput-object p1, v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->d:Ljava/lang/RuntimeException;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_20

    .line 114
    iput-boolean v1, v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->a:Z

    .line 115
    monitor-enter v0

    .line 116
    :try_start_28
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 117
    monitor-exit v0

    goto :goto_3e

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_2d

    throw p1

    .line 114
    :goto_30
    iput-boolean v1, v0, Lcn/kuaipan/android/utils/SyncAccessor$Args;->a:Z

    .line 115
    monitor-enter v0

    .line 116
    :try_start_33
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 117
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_38

    throw p1

    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1

    .line 120
    :cond_3b
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    :goto_3e
    return-void
.end method
