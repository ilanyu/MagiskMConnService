.class abstract Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnectorBase;
.super Lcom/xiaomi/accountsdk/futureservice/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ServiceTokenServiceConnectorBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/accountsdk/futureservice/b<",
        "Lcom/xiaomi/passport/IPassportServiceTokenService;",
        "TT;TT;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "com.xiaomi.account"

.field private static final b:Ljava/lang/String; = "com.xiaomi.account.action.SERVICE_TOKEN_OP"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xiaomi/accountsdk/futureservice/ClientFuture<",
            "TT;TT;>;)V"
        }
    .end annotation

    const-string v0, "com.xiaomi.account.action.SERVICE_TOKEN_OP"

    const-string v1, "com.xiaomi.account"

    .line 220
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/xiaomi/accountsdk/futureservice/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    .line 213
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnectorBase;->b(Landroid/os/IBinder;)Lcom/xiaomi/passport/IPassportServiceTokenService;

    move-result-object p1

    return-object p1
.end method

.method protected final b(Landroid/os/IBinder;)Lcom/xiaomi/passport/IPassportServiceTokenService;
    .registers 2

    .line 225
    invoke-static {p1}, Lcom/xiaomi/passport/IPassportServiceTokenService$Stub;->a(Landroid/os/IBinder;)Lcom/xiaomi/passport/IPassportServiceTokenService;

    move-result-object p1

    return-object p1
.end method
