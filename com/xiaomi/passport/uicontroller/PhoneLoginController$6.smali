.class Lcom/xiaomi/passport/uicontroller/PhoneLoginController$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

.field final synthetic b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;)V
    .registers 3

    .line 180
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$6;->b:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$6;->a:Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$6;->a:Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;->i:[Ljava/lang/String;

    if-nez v0, :cond_21

    .line 185
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$6;->a:Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;->a(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;)Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;

    move-result-object v0

    .line 186
    invoke-static {}, Lcom/xiaomi/passport/PassportUserEnvironment$Holder;->a()Lcom/xiaomi/passport/PassportUserEnvironment;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/accountsdk/account/h;->e()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/PassportUserEnvironment;->g(Landroid/app/Application;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->a([Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->a()Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

    move-result-object v0

    goto :goto_23

    .line 190
    :cond_21
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$6;->a:Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

    .line 192
    :goto_23
    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/XMPassport;->a(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

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

    .line 180
    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$6;->a()Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    return-object v0
.end method
