.class public abstract Lcom/android/volley/toolbox/n;
.super Lcom/android/volley/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request<",
        "TT;>;"
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/String; = "utf-8"

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/lang/Object;

.field private d:Lcom/android/volley/Response$Listener;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "application/json; charset=%s"

    const/4 v1, 0x1

    .line 40
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "utf-8"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 41
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/volley/toolbox/n;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 6
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/android/volley/Response$ErrorListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2, p5}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 44
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/n;->c:Ljava/lang/Object;

    .line 71
    iput-object p4, p0, Lcom/android/volley/toolbox/n;->d:Lcom/android/volley/Response$Listener;

    .line 72
    iput-object p3, p0, Lcom/android/volley/toolbox/n;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 61
    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/n;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/android/volley/i;)Lcom/android/volley/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/i;",
            ")",
            "Lcom/android/volley/Response<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected b(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/android/volley/toolbox/n;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_3
    iget-object v1, p0, Lcom/android/volley/toolbox/n;->d:Lcom/android/volley/Response$Listener;

    .line 88
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    .line 90
    invoke-interface {v1, p1}, Lcom/android/volley/Response$Listener;->a(Ljava/lang/Object;)V

    :cond_b
    return-void

    :catchall_c
    move-exception p1

    .line 88
    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public i()V
    .registers 3

    .line 77
    invoke-super {p0}, Lcom/android/volley/Request;->i()V

    .line 78
    iget-object v0, p0, Lcom/android/volley/toolbox/n;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 79
    :try_start_7
    iput-object v1, p0, Lcom/android/volley/toolbox/n;->d:Lcom/android/volley/Response$Listener;

    .line 80
    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public n()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/android/volley/toolbox/n;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()[B
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/android/volley/toolbox/n;->s()[B

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .registers 2

    .line 113
    sget-object v0, Lcom/android/volley/toolbox/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public s()[B
    .registers 6

    const/4 v0, 0x0

    .line 119
    :try_start_1
    iget-object v1, p0, Lcom/android/volley/toolbox/n;->e:Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_f

    :cond_6
    iget-object v1, p0, Lcom/android/volley/toolbox/n;->e:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_e} :catch_10

    move-object v0, v1

    :goto_f
    return-object v0

    :catch_10
    const-string v1, "Unsupported Encoding while trying to get the bytes of %s using %s"

    const/4 v2, 0x2

    .line 121
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/volley/toolbox/n;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "utf-8"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
