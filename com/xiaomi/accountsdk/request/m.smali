.class public abstract Lcom/xiaomi/accountsdk/request/m;
.super Lcom/xiaomi/accountsdk/request/n;
.source "SourceFile"


# instance fields
.field private final a:Lcom/xiaomi/accountsdk/request/n;

.field private final b:Lcom/xiaomi/accountsdk/request/n;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/request/n;Lcom/xiaomi/accountsdk/request/n;)V
    .registers 4

    .line 12
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/n;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/request/m;->c:Z

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 17
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/m;->a:Lcom/xiaomi/accountsdk/request/n;

    .line 18
    iput-object p2, p0, Lcom/xiaomi/accountsdk/request/m;->b:Lcom/xiaomi/accountsdk/request/n;

    return-void

    .line 14
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "both arguments should not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/p;
        }
    .end annotation

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/m;->a:Lcom/xiaomi/accountsdk/request/n;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/n;->a()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/m;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 26
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/m;->c()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_19
    .catch Lcom/xiaomi/accountsdk/request/p; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/m;->a(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_20

    .line 35
    :cond_18
    throw v0

    :catch_19
    move-exception v0

    .line 30
    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/m;->a(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 38
    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/m;->d()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/request/m;->c:Z

    .line 40
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/m;->b:Lcom/xiaomi/accountsdk/request/n;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/n;->a()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0

    return-object v0

    .line 31
    :cond_2d
    throw v0
.end method

.method protected abstract a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Z
.end method

.method protected abstract a(Ljava/lang/Exception;)Z
.end method

.method public final b()Z
    .registers 2

    .line 44
    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/request/m;->c:Z

    return v0
.end method

.method protected abstract c()V
.end method

.method protected abstract d()V
.end method
