.class final Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;
.super Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/servicetoken/f;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;Landroid/app/Activity;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

.field final synthetic e:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;)V
    .registers 3

    .line 36
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->d:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    iput-object p2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->e:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->e:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->d:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1c

    .line 52
    iget-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->e:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    new-instance p2, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->d:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    iget-object v0, v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->c:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->g:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 53
    invoke-virtual {p2, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object p2

    .line 54
    invoke-virtual {p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->a(Ljava/lang/Object;)V

    goto :goto_23

    .line 56
    :cond_1c
    iget-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->e:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    iget-object p2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->d:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    invoke-virtual {p1, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->a(Ljava/lang/Object;)V

    :goto_23
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->d:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    iget-object v0, v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->c:Ljava/lang/String;

    .line 40
    invoke-static {p1, v0}, Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter;->a(Landroid/os/Bundle;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->e:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->a(Ljava/lang/Object;)V

    return-void
.end method
