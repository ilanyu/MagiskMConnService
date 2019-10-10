.class Lcom/xiaomi/passport/uicontroller/PhoneLoginController$5;
.super Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$TicketLoginCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback<",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$TicketLoginCallback;

.field final synthetic b:Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

.field final synthetic c:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$TicketLoginCallback;Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;)V
    .registers 4

    .line 154
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$5;->c:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$5;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$TicketLoginCallback;

    iput-object p3, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$5;->b:Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 158
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 159
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$5;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$TicketLoginCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$TicketLoginCallback;->a(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_54
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_68

    :catch_c
    move-exception p1

    const-string v0, "PhoneLoginController"

    const-string v1, "loginByPhoneTicket"

    .line 164
    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 166
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/a/o;

    if-eqz v1, :cond_2c

    .line 167
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$5;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$TicketLoginCallback;

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$5;->b:Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;->h:Ljava/lang/String;

    check-cast v0, Lcom/xiaomi/accountsdk/account/a/o;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/a/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$TicketLoginCallback;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    .line 168
    :cond_2c
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/a/i;

    if-eqz v1, :cond_36

    .line 169
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$5;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$TicketLoginCallback;

    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$TicketLoginCallback;->a()V

    goto :goto_68

    .line 170
    :cond_36
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/a/m;

    if-eqz v1, :cond_40

    .line 171
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$5;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$TicketLoginCallback;

    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$TicketLoginCallback;->b()V

    goto :goto_68

    .line 173
    :cond_40
    invoke-static {v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a(Ljava/lang/Throwable;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    move-result-object v1

    .line 174
    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$5;->c:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

    invoke-static {v2, v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Ljava/lang/Throwable;)Z

    move-result v0

    .line 175
    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$5;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$TicketLoginCallback;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v1, p1, v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$TicketLoginCallback;->a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;Z)V

    goto :goto_68

    :catch_54
    move-exception p1

    const-string v0, "PhoneLoginController"

    const-string v1, "loginByPhoneTicket"

    .line 161
    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$5;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$TicketLoginCallback;

    sget-object v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$TicketLoginCallback;->a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;Z)V

    :goto_68
    return-void
.end method
