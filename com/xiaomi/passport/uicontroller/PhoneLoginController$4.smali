.class Lcom/xiaomi/passport/uicontroller/PhoneLoginController$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;

.field final synthetic b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;)V
    .registers 3

    .line 139
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$4;->b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$4;->a:Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$4;->b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

    invoke-static {v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$4;->a:Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneUserInfoHelper;->a(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$4;->a()Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    move-result-object v0

    return-object v0
.end method
