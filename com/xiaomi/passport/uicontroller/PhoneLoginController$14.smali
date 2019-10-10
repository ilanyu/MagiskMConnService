.class Lcom/xiaomi/passport/uicontroller/PhoneLoginController$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;

.field final synthetic b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;)V
    .registers 3

    .line 369
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$14;->b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$14;->a:Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$14;->a:Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;)Ljava/lang/String;

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

    .line 369
    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$14;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
