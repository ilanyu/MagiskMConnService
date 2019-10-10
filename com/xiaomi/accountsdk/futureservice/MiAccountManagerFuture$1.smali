.class Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accountsdk/futureservice/a;->a()Lcom/xiaomi/accountsdk/futureservice/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/accountsdk/futureservice/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/futureservice/a;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture$1;->a:Lcom/xiaomi/accountsdk/futureservice/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture$1;->a:Lcom/xiaomi/accountsdk/futureservice/a;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture$1;->a:Lcom/xiaomi/accountsdk/futureservice/a;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/futureservice/a;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/futureservice/a;->a(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_12

    :catch_c
    move-exception v0

    .line 32
    iget-object v1, p0, Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture$1;->a:Lcom/xiaomi/accountsdk/futureservice/a;

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/futureservice/a;->a(Ljava/lang/Throwable;)V

    :goto_12
    return-void
.end method
