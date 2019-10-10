.class public Lmiui/cloud/common/XMainThreadCallback;
.super Lmiui/cloud/common/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/common/XMainThreadCallback$CallRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/cloud/common/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Lmiui/cloud/common/e;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 48
    new-instance p1, Lmiui/cloud/common/XMainThreadCallback$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lmiui/cloud/common/XMainThreadCallback$1;-><init>(Lmiui/cloud/common/XMainThreadCallback;Landroid/os/Looper;)V

    iput-object p1, p0, Lmiui/cloud/common/XMainThreadCallback;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lmiui/cloud/common/XMainThreadCallback;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 29
    new-instance v1, Lmiui/cloud/common/XMainThreadCallback$CallRequest;

    invoke-direct {v1, p1, p2}, Lmiui/cloud/common/XMainThreadCallback$CallRequest;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 30
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 4

    .line 39
    :try_start_0
    invoke-super {p0, p1, p2}, Lmiui/cloud/common/e;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_f

    :catch_4
    const/4 p1, 0x1

    .line 43
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "Exception in callback, but unable to propagate to the original thread. "

    aput-object v0, p1, p2

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->b([Ljava/lang/Object;)V

    :goto_f
    return-void
.end method
