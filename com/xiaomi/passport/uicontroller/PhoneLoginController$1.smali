.class Lcom/xiaomi/passport/uicontroller/PhoneLoginController$1;
.super Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendPhoneTicketCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendPhoneTicketCallback;

.field final synthetic b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendPhoneTicketCallback;)V
    .registers 3

    .line 65
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$1;->b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$1;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendPhoneTicketCallback;

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 69
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 70
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$1;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendPhoneTicketCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendPhoneTicketCallback;->a(I)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_f} :catch_58
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_6b

    :catch_10
    move-exception p1

    const-string v0, "PhoneLoginController"

    const-string v1, "sendPhoneLoginTicket"

    .line 75
    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 77
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/a/n;

    if-eqz v1, :cond_2c

    .line 78
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$1;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendPhoneTicketCallback;

    check-cast v0, Lcom/xiaomi/accountsdk/account/a/n;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/a/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendPhoneTicketCallback;->a(Ljava/lang/String;)V

    goto :goto_6b

    .line 79
    :cond_2c
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/a/v;

    if-eqz v1, :cond_36

    .line 80
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$1;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendPhoneTicketCallback;

    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendPhoneTicketCallback;->a()V

    goto :goto_6b

    .line 81
    :cond_36
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/a/s;

    if-eqz v1, :cond_40

    .line 82
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$1;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendPhoneTicketCallback;

    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendPhoneTicketCallback;->b()V

    goto :goto_6b

    .line 83
    :cond_40
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/a/i;

    if-eqz v1, :cond_4a

    .line 84
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$1;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendPhoneTicketCallback;

    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendPhoneTicketCallback;->c()V

    goto :goto_6b

    .line 86
    :cond_4a
    invoke-static {v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a(Ljava/lang/Throwable;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$1;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendPhoneTicketCallback;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendPhoneTicketCallback;->a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    goto :goto_6b

    :catch_58
    move-exception p1

    const-string v0, "PhoneLoginController"

    const-string v1, "sendPhoneLoginTicket"

    .line 72
    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$1;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendPhoneTicketCallback;

    sget-object v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SendPhoneTicketCallback;->a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    :goto_6b
    return-void
.end method
