.class public Lcom/xiaomi/accountsdk/service/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/accountsdk/hasheddeviceidlib/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "passport"

    const/4 v1, 0x1

    const/16 v2, 0x1388

    .line 11
    invoke-static {p1, v0, v1, v2}, Lcom/xiaomi/accountsdk/service/PassportCommonServiceClient;->a(Landroid/content/Context;Ljava/lang/String;II)Lcom/xiaomi/accountsdk/service/DeviceInfoResult;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 13
    iget-object v0, p1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->e:Landroid/os/Bundle;

    if-eqz v0, :cond_18

    .line 14
    iget-object p1, p1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->e:Landroid/os/Bundle;

    const-string v0, "hashed_device_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method
