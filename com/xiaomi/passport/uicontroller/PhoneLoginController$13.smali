.class Lcom/xiaomi/passport/uicontroller/PhoneLoginController$13;
.super Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a(Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SetPasswordCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
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
.field final synthetic a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SetPasswordCallback;

.field final synthetic b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SetPasswordCallback;)V
    .registers 3

    .line 343
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$13;->b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$13;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SetPasswordCallback;

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

    .line 347
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 348
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$13;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SetPasswordCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SetPasswordCallback;->a(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_44
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_57

    :catch_c
    move-exception p1

    const-string v0, "PhoneLoginController"

    const-string v1, "setPassword"

    .line 353
    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 355
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/a/m;

    if-eqz v1, :cond_22

    .line 356
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$13;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SetPasswordCallback;

    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SetPasswordCallback;->b()V

    goto :goto_57

    .line 357
    :cond_22
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/a/g;

    if-eqz v1, :cond_2c

    .line 358
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$13;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SetPasswordCallback;

    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SetPasswordCallback;->c()V

    goto :goto_57

    .line 359
    :cond_2c
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/a/x;

    if-eqz v1, :cond_36

    .line 360
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$13;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SetPasswordCallback;

    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SetPasswordCallback;->a()V

    goto :goto_57

    .line 362
    :cond_36
    invoke-static {v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a(Ljava/lang/Throwable;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$13;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SetPasswordCallback;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SetPasswordCallback;->a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    goto :goto_57

    :catch_44
    move-exception p1

    const-string v0, "PhoneLoginController"

    const-string v1, "setPassword"

    .line 350
    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 351
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$13;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SetPasswordCallback;

    sget-object v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$SetPasswordCallback;->a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    :goto_57
    return-void
.end method
