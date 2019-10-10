.class public Lcom/android/volley/toolbox/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/toolbox/c;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation


# instance fields
.field private final a:Landroid/accounts/AccountManager;

.field private final b:Landroid/accounts/Account;

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;Z)V
    .registers 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/volley/toolbox/b;->a:Landroid/accounts/AccountManager;

    .line 72
    iput-object p2, p0, Lcom/android/volley/toolbox/b;->b:Landroid/accounts/Account;

    .line 73
    iput-object p3, p0, Lcom/android/volley/toolbox/b;->c:Ljava/lang/String;

    .line 74
    iput-boolean p4, p0, Lcom/android/volley/toolbox/b;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/volley/toolbox/b;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Z)V
    .registers 5

    .line 62
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/volley/toolbox/b;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()Landroid/accounts/Account;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/volley/toolbox/b;->b:Landroid/accounts/Account;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/android/volley/toolbox/b;->a:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/volley/toolbox/b;->b:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/volley/toolbox/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/a;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/volley/toolbox/b;->a:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/volley/toolbox/b;->b:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/volley/toolbox/b;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/volley/toolbox/b;->d:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 92
    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 100
    :try_start_e
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_5a

    const/4 v2, 0x0

    .line 105
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "intent"

    .line 106
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "authtoken"

    .line 110
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3e

    :cond_30
    const-string v0, "intent"

    .line 107
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 108
    new-instance v1, Lcom/android/volley/a;

    invoke-direct {v1, v0}, Lcom/android/volley/a;-><init>(Landroid/content/Intent;)V

    throw v1

    :cond_3e
    :goto_3e
    if-eqz v2, :cond_41

    return-object v2

    .line 113
    :cond_41
    new-instance v0, Lcom/android/volley/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got null auth token for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/volley/toolbox/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/volley/a;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_5a
    move-exception v0

    .line 102
    new-instance v1, Lcom/android/volley/a;

    const-string v2, "Error while retrieving auth token"

    invoke-direct {v1, v2, v0}, Lcom/android/volley/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
