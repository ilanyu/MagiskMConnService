.class public final Lcom/xiaomi/accountsdk/guestaccount/data/b;
.super Lcom/xiaomi/accountsdk/futureservice/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/accountsdk/futureservice/c<",
        "Lcom/xiaomi/accountsdk/guestaccount/data/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "GuestAccountFuture"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/futureservice/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 17
    :try_start_0
    invoke-super {p0}, Lcom/xiaomi/accountsdk/futureservice/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/guestaccount/data/c;
    :try_end_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "GuestAccountFuture"

    const-string v2, "get()"

    .line 19
    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/b;->l:Lcom/xiaomi/accountsdk/guestaccount/data/c;

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 27
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/accountsdk/futureservice/c;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/accountsdk/guestaccount/data/c;
    :try_end_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    const-string p2, "GuestAccountFuture"

    const-string p3, "get(,)"

    .line 29
    invoke-static {p2, p3, p1}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    sget-object p1, Lcom/xiaomi/accountsdk/guestaccount/b;->l:Lcom/xiaomi/accountsdk/guestaccount/data/c;

    return-object p1
.end method

.method public synthetic get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/data/b;->a()Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/accountsdk/guestaccount/data/b;->a(JLjava/util/concurrent/TimeUnit;)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object p1

    return-object p1
.end method
