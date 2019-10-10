.class public abstract Lcom/xiaomi/accountsdk/request/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/p;
        }
    .end annotation
.end method

.method public final e()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/a/b/a;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/account/a/g;,
            Lcom/xiaomi/accountsdk/account/a/l;,
            Lcom/xiaomi/accountsdk/account/a/q;,
            Lcom/xiaomi/accountsdk/account/a/n;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/c;,
            Lcom/xiaomi/accountsdk/account/a/o;
        }
    .end annotation

    .line 30
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/n;->a()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0
    :try_end_4
    .catch Lcom/xiaomi/accountsdk/request/p; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    .line 32
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/p;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 33
    instance-of v1, v0, Lcom/xiaomi/accountsdk/request/k;

    if-nez v1, :cond_55

    .line 35
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/a/g;

    if-nez v1, :cond_52

    .line 37
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/a/l;

    if-nez v1, :cond_4f

    .line 39
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/a/q;

    if-nez v1, :cond_4c

    .line 41
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/a/n;

    if-nez v1, :cond_49

    .line 43
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_46

    .line 45
    instance-of v1, v0, Lcom/xiaomi/accountsdk/request/a;

    if-nez v1, :cond_43

    .line 47
    instance-of v1, v0, Lcom/xiaomi/accountsdk/request/c;

    if-nez v1, :cond_40

    .line 49
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/a/o;

    if-nez v1, :cond_3d

    .line 51
    instance-of v1, v0, Lcom/xiaomi/a/b/a;

    if-eqz v1, :cond_35

    .line 52
    check-cast v0, Lcom/xiaomi/a/b/a;

    throw v0

    .line 54
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_3d
    check-cast v0, Lcom/xiaomi/accountsdk/account/a/o;

    throw v0

    .line 48
    :cond_40
    check-cast v0, Lcom/xiaomi/accountsdk/request/c;

    throw v0

    .line 46
    :cond_43
    check-cast v0, Lcom/xiaomi/accountsdk/request/a;

    throw v0

    .line 44
    :cond_46
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 42
    :cond_49
    check-cast v0, Lcom/xiaomi/accountsdk/account/a/n;

    throw v0

    .line 40
    :cond_4c
    check-cast v0, Lcom/xiaomi/accountsdk/account/a/q;

    throw v0

    .line 38
    :cond_4f
    check-cast v0, Lcom/xiaomi/accountsdk/account/a/l;

    throw v0

    .line 36
    :cond_52
    check-cast v0, Lcom/xiaomi/accountsdk/account/a/g;

    throw v0

    .line 34
    :cond_55
    check-cast v0, Lcom/xiaomi/accountsdk/request/k;

    throw v0
.end method
