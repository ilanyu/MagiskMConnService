.class Lcom/xiaomi/passport/uicontroller/PhoneLoginController$3;
.super Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback<",
        "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoCallback;

.field final synthetic b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoCallback;)V
    .registers 3

    .line 108
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$3;->b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$3;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoCallback;

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
            "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
            ">;)V"
        }
    .end annotation

    .line 112
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    .line 113
    iget-object v0, p1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->d:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    .line 114
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->a:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    if-ne v0, v1, :cond_12

    .line 115
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$3;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoCallback;->a(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    goto :goto_63

    .line 116
    :cond_12
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->c:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    if-ne v0, v1, :cond_1c

    .line 117
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$3;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoCallback;->b(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    goto :goto_63

    .line 119
    :cond_1c
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$3;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoCallback;->c(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_21} :catch_50
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_63

    :catch_22
    move-exception p1

    const-string v0, "PhoneLoginController"

    const-string v1, "query user phone info"

    .line 125
    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 127
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/a/m;

    if-eqz v1, :cond_38

    .line 128
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$3;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoCallback;

    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoCallback;->b()V

    goto :goto_63

    .line 129
    :cond_38
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/a/i;

    if-eqz v1, :cond_42

    .line 130
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$3;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoCallback;

    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoCallback;->a()V

    goto :goto_63

    .line 132
    :cond_42
    invoke-static {v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a(Ljava/lang/Throwable;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$3;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoCallback;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoCallback;->a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    goto :goto_63

    :catch_50
    move-exception p1

    const-string v0, "PhoneLoginController"

    const-string v1, "query user phone info"

    .line 122
    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$3;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoCallback;

    sget-object v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoCallback;->a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    :goto_63
    return-void
.end method
