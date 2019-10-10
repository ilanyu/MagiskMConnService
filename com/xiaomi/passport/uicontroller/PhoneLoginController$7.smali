.class Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;
.super Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
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
.field final synthetic a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;

.field final synthetic b:Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;

.field final synthetic c:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)V
    .registers 4

    .line 204
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->c:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;

    iput-object p3, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->b:Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;

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

    const/4 v0, 0x0

    .line 208
    :try_start_1
    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 209
    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;

    invoke-interface {v1, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;->a(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_c} :catch_af
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_c} :catch_e

    goto/16 :goto_c2

    :catch_e
    move-exception p1

    const-string v1, "PhoneLoginController"

    const-string v2, "passwordLogin"

    .line 214
    invoke-static {v1, v2, p1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 216
    instance-of v2, v1, Lcom/xiaomi/accountsdk/account/a/o;

    if-eqz v2, :cond_2f

    .line 217
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->b:Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->i:Ljava/lang/String;

    check-cast v1, Lcom/xiaomi/accountsdk/account/a/o;

    .line 218
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/a/o;->a()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-interface {p1, v0, v1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c2

    .line 219
    :cond_2f
    instance-of v2, v1, Lcom/xiaomi/accountsdk/account/a/q;

    if-eqz v2, :cond_64

    .line 220
    check-cast v1, Lcom/xiaomi/accountsdk/account/a/q;

    .line 221
    new-instance p1, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;-><init>()V

    .line 222
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/a/q;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object p1

    .line 223
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/a/q;->a()Lcom/xiaomi/accountsdk/account/data/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->a(Lcom/xiaomi/accountsdk/account/data/h;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->b:Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->i:Ljava/lang/String;

    .line 224
    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object p1

    .line 225
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/a/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object p1

    .line 226
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->a()Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;

    move-result-object p1

    .line 227
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;->a(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;)V

    goto :goto_c2

    .line 228
    :cond_64
    instance-of v2, v1, Lcom/xiaomi/accountsdk/account/a/n;

    if-eqz v2, :cond_74

    .line 229
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;

    check-cast v1, Lcom/xiaomi/accountsdk/account/a/n;

    .line 230
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/a/n;->a()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-interface {p1, v0, v1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;->a(ZLjava/lang/String;)V

    goto :goto_c2

    .line 231
    :cond_74
    instance-of v2, v1, Lcom/xiaomi/accountsdk/account/a/g;

    if-eqz v2, :cond_9b

    .line 232
    check-cast v1, Lcom/xiaomi/accountsdk/account/a/g;

    .line 233
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/a/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8f

    .line 234
    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;

    const/4 v0, 0x1

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/a/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;->a(ZLjava/lang/String;)V

    goto :goto_c2

    .line 236
    :cond_8f
    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;

    sget-object v2, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->i:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1, v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;->a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;Z)V

    goto :goto_c2

    .line 239
    :cond_9b
    invoke-static {v1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a(Ljava/lang/Throwable;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    move-result-object v0

    .line 240
    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->c:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

    invoke-static {v2, v1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Ljava/lang/Throwable;)Z

    move-result v1

    .line 241
    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v0, p1, v1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;->a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;Z)V

    goto :goto_c2

    :catch_af
    move-exception p1

    const-string v1, "PhoneLoginController"

    const-string v2, "passwordLogin"

    .line 211
    invoke-static {v1, v2, p1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;

    sget-object v2, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1, v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;->a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;Z)V

    :goto_c2
    return-void
.end method
