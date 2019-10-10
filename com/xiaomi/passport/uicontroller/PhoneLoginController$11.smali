.class Lcom/xiaomi/passport/uicontroller/PhoneLoginController$11;
.super Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a(Lcom/xiaomi/accountsdk/account/data/k;Ljava/lang/String;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendSetPwdTicketCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendSetPwdTicketCallback;

.field final synthetic b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendSetPwdTicketCallback;)V
    .registers 3

    .line 304
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$11;->b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$11;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendSetPwdTicketCallback;

    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 308
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$11;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendSetPwdTicketCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendSetPwdTicketCallback;->a(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_40
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_53

    :catch_c
    move-exception p1

    const-string v0, "PhoneLoginController"

    const-string v1, "sendSetPasswordTicket"

    .line 314
    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 316
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/a/s;

    if-eqz v1, :cond_22

    .line 317
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$11;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendSetPwdTicketCallback;

    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendSetPwdTicketCallback;->a()V

    goto :goto_53

    .line 318
    :cond_22
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/a/i;

    if-eqz v1, :cond_32

    .line 319
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$11;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendSetPwdTicketCallback;

    sget-object v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->k:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendSetPwdTicketCallback;->a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    goto :goto_53

    .line 321
    :cond_32
    invoke-static {v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a(Ljava/lang/Throwable;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$11;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendSetPwdTicketCallback;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendSetPwdTicketCallback;->a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    goto :goto_53

    :catch_40
    move-exception p1

    const-string v0, "PhoneLoginController"

    const-string v1, "sendSetPasswordTicket"

    .line 311
    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$11;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendSetPwdTicketCallback;

    sget-object v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendSetPwdTicketCallback;->a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    :goto_53
    return-void
.end method
