.class public abstract Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;
.super Lcom/xiaomi/accountsdk/request/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$PostAsString;,
        Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;
    }
.end annotation


# instance fields
.field protected final b:Lcom/xiaomi/accountsdk/request/o;


# direct methods
.method protected constructor <init>(Lcom/xiaomi/accountsdk/request/o;)V
    .registers 3

    .line 9
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/n;-><init>()V

    if-eqz p1, :cond_8

    .line 13
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->b:Lcom/xiaomi/accountsdk/request/o;

    return-void

    .line 11
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "arguments can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b()Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;
    .registers 3

    .line 17
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->b:Lcom/xiaomi/accountsdk/request/o;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/o;->a()Lcom/xiaomi/accountsdk/request/o;

    move-result-object v0

    .line 19
    instance-of v1, p0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;

    if-eqz v1, :cond_10

    .line 20
    new-instance v1, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;-><init>(Lcom/xiaomi/accountsdk/request/o;)V

    return-object v1

    .line 21
    :cond_10
    instance-of v1, p0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$PostAsString;

    if-eqz v1, :cond_1a

    .line 22
    new-instance v1, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$PostAsString;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$PostAsString;-><init>(Lcom/xiaomi/accountsdk/request/o;)V

    return-object v1

    .line 24
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Z
    .registers 3

    .line 29
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->b:Lcom/xiaomi/accountsdk/request/o;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/request/o;->f:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->b:Lcom/xiaomi/accountsdk/request/o;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/request/o;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public abstract d()Ljava/lang/String;
.end method
