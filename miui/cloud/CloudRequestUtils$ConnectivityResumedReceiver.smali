.class Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/CloudRequestUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectivityResumedReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture;
    }
.end annotation


# instance fields
.field private final a:Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 236
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 232
    new-instance v0, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture;

    invoke-direct {v0}, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture;-><init>()V

    iput-object v0, p0, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;->a:Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture;

    .line 237
    iput-object p1, p0, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;->b:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lmiui/cloud/CloudRequestUtils$1;)V
    .registers 3

    .line 213
    invoke-direct {p0, p1}, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;->b:Landroid/content/Context;

    invoke-static {v0}, Lmiui/cloud/CloudRequestUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 252
    iget-object v0, p0, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;->a:Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture;->a(Ljava/lang/Object;)V

    .line 254
    :cond_12
    iget-object v0, p0, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;->a:Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture;

    invoke-virtual {v0}, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture;->get()Ljava/lang/Object;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "noConnectivity"

    const/4 v0, 0x0

    .line 242
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1a

    const-string p1, "CloudRequestUtils"

    const-string p2, "connectivity resumed"

    .line 245
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object p1, p0, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver;->a:Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiui/cloud/CloudRequestUtils$ConnectivityResumedReceiver$AsyncFuture;->a(Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method
