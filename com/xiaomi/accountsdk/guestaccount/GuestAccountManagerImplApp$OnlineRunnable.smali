.class abstract Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$OnlineRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "OnlineRunnable"
.end annotation


# instance fields
.field private final a:Lcom/xiaomi/accountsdk/guestaccount/data/b;

.field final synthetic c:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$OnlineRunnable;->c:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    new-instance p1, Lcom/xiaomi/accountsdk/guestaccount/data/b;

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/b;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$OnlineRunnable;->a:Lcom/xiaomi/accountsdk/guestaccount/data/b;

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/xiaomi/accountsdk/guestaccount/data/c;
.end method

.method public b()Lcom/xiaomi/accountsdk/guestaccount/data/b;
    .registers 3

    .line 252
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 253
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_13

    .line 255
    :cond_10
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$OnlineRunnable;->run()V

    .line 257
    :goto_13
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$OnlineRunnable;->a:Lcom/xiaomi/accountsdk/guestaccount/data/b;

    return-object v0
.end method

.method public run()V
    .registers 5

    .line 220
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$OnlineRunnable;->a()Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->d()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v1

    if-nez v1, :cond_10

    .line 223
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$OnlineRunnable;->a:Lcom/xiaomi/accountsdk/guestaccount/data/b;

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/b;->a(Ljava/lang/Object;)V

    return-void

    .line 227
    :cond_10
    invoke-static {v1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->a(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 228
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$OnlineRunnable;->c:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;

    invoke-static {v2}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->c(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;)Lcom/xiaomi/accountsdk/guestaccount/i;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$OnlineRunnable;->c:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/xiaomi/accountsdk/guestaccount/i;->a(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V

    .line 231
    :cond_23
    invoke-static {v1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->b(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 232
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$OnlineRunnable;->c:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;

    invoke-static {v2}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->c(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;)Lcom/xiaomi/accountsdk/guestaccount/i;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$OnlineRunnable;->c:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/xiaomi/accountsdk/guestaccount/i;->b(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V

    .line 233
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$OnlineRunnable;->a:Lcom/xiaomi/accountsdk/guestaccount/data/b;

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/b;->a(Ljava/lang/Object;)V

    return-void

    .line 236
    :cond_3c
    iget-object v2, v1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 237
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$OnlineRunnable;->a:Lcom/xiaomi/accountsdk/guestaccount/data/b;

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/b;->a(Ljava/lang/Object;)V

    return-void

    .line 240
    :cond_4a
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$OnlineRunnable;->c:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->a(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;)Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->a(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->d()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v1

    .line 242
    invoke-static {v1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->b(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 243
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$OnlineRunnable;->c:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;

    invoke-static {v2}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->c(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;)Lcom/xiaomi/accountsdk/guestaccount/i;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$OnlineRunnable;->c:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/xiaomi/accountsdk/guestaccount/i;->b(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V

    .line 246
    :cond_6b
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$OnlineRunnable;->a:Lcom/xiaomi/accountsdk/guestaccount/data/b;

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/b;->a(Ljava/lang/Object;)V

    return-void
.end method
