.class public Lcn/kuaipan/android/kss/upload/UploadTaskStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/kss/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;
    }
.end annotation


# static fields
.field private static final W:Ljava/lang/String; = "UploadTaskStore"

.field private static volatile Z:Landroid/os/Looper; = null

.field private static final aa:I = 0x0

.field private static final ab:I = 0x1

.field private static final ac:I = 0x2

.field private static final ad:I = 0x3


# instance fields
.field private final X:Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

.field private final Y:Lcn/kuaipan/android/kss/b;

.field private final ae:Lcn/kuaipan/android/utils/SyncAccessor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/kuaipan/android/kss/b;)V
    .registers 5

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    new-instance v0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$1;

    invoke-static {}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->a()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$1;-><init>(Lcn/kuaipan/android/kss/upload/UploadTaskStore;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->ae:Lcn/kuaipan/android/utils/SyncAccessor;

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    .line 38
    invoke-static {p1}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->a(Landroid/content/Context;)Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    move-result-object p1

    iput-object p1, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->X:Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    .line 39
    iput-object p2, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->Y:Lcn/kuaipan/android/kss/b;

    return-void

    .line 34
    :cond_1b
    new-instance p1, Lcn/kuaipan/android/a/f;

    const p2, 0x7a122

    const-string v0, "context and dataFactory can\'t be null"

    invoke-direct {p1, p2, v0}, Lcn/kuaipan/android/a/f;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private static a()Landroid/os/Looper;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 247
    sget-object v0, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->Z:Landroid/os/Looper;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v2, v1

    goto :goto_b

    .line 248
    :cond_7
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    :goto_b
    if-eqz v2, :cond_13

    .line 249
    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_14

    :cond_13
    move-object v0, v1

    :cond_14
    if-nez v0, :cond_43

    .line 253
    const-class v2, Lcn/kuaipan/android/kss/KssMaster;

    monitor-enter v2

    .line 254
    :try_start_19
    sget-object v0, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->Z:Landroid/os/Looper;

    if-nez v0, :cond_1f

    move-object v3, v1

    goto :goto_23

    .line 255
    :cond_1f
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    :goto_23
    if-eqz v3, :cond_2b

    .line 256
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_2c

    :cond_2b
    move-object v0, v1

    :cond_2c
    if-nez v0, :cond_3e

    .line 260
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KssMaster - UploadRecorder"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 262
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 263
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 265
    :cond_3e
    monitor-exit v2

    goto :goto_43

    :catchall_40
    move-exception v0

    monitor-exit v2
    :try_end_42
    .catchall {:try_start_19 .. :try_end_42} :catchall_40

    throw v0

    :cond_43
    :goto_43
    return-object v0
.end method

.method static synthetic a(Lcn/kuaipan/android/kss/upload/UploadTaskStore;)Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;
    .registers 1

    .line 26
    iget-object p0, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->X:Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    return-object p0
.end method

.method static synthetic b(Lcn/kuaipan/android/kss/upload/UploadTaskStore;)Lcn/kuaipan/android/kss/b;
    .registers 1

    .line 26
    iget-object p0, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->Y:Lcn/kuaipan/android/kss/b;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->ae:Lcn/kuaipan/android/utils/SyncAccessor;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcn/kuaipan/android/utils/SyncAccessor;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(ILcn/kuaipan/android/kss/upload/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->ae:Lcn/kuaipan/android/utils/SyncAccessor;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    new-instance p1, Lcn/kuaipan/android/kss/upload/f;

    invoke-direct {p1}, Lcn/kuaipan/android/kss/upload/f;-><init>()V

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-virtual {v0, v2, v1}, Lcn/kuaipan/android/utils/SyncAccessor;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(ILcn/kuaipan/android/kss/upload/b;Lcn/kuaipan/android/kss/upload/f;)V
    .registers 5

    .line 73
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->X:Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->a(ILcn/kuaipan/android/kss/upload/b;Lcn/kuaipan/android/kss/upload/f;)V

    return-void
.end method

.method public b(I)Lcn/kuaipan/android/kss/upload/b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->ae:Lcn/kuaipan/android/utils/SyncAccessor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x3

    invoke-virtual {v0, p1, v1}, Lcn/kuaipan/android/utils/SyncAccessor;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/kuaipan/android/kss/upload/b;

    return-object p1
.end method

.method public c(I)Lcn/kuaipan/android/kss/upload/f;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->ae:Lcn/kuaipan/android/utils/SyncAccessor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x2

    invoke-virtual {v0, p1, v1}, Lcn/kuaipan/android/utils/SyncAccessor;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/kuaipan/android/kss/upload/f;

    return-object p1
.end method
