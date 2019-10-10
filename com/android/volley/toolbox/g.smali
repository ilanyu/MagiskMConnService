.class public Lcom/android/volley/toolbox/g;
.super Lcom/android/volley/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/android/volley/Cache;

.field private final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/volley/Cache;Ljava/lang/Runnable;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, v1, v0, v0}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 39
    iput-object p1, p0, Lcom/android/volley/toolbox/g;->a:Lcom/android/volley/Cache;

    .line 40
    iput-object p2, p0, Lcom/android/volley/toolbox/g;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected a(Lcom/android/volley/i;)Lcom/android/volley/Response;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/i;",
            ")",
            "Lcom/android/volley/Response<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public j()Z
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/android/volley/toolbox/g;->a:Lcom/android/volley/Cache;

    invoke-interface {v0}, Lcom/android/volley/Cache;->b()V

    .line 47
    iget-object v0, p0, Lcom/android/volley/toolbox/g;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_17

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49
    iget-object v1, p0, Lcom/android/volley/toolbox/g;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public v()Lcom/android/volley/Request$Priority;
    .registers 2

    .line 56
    sget-object v0, Lcom/android/volley/Request$Priority;->d:Lcom/android/volley/Request$Priority;

    return-object v0
.end method
