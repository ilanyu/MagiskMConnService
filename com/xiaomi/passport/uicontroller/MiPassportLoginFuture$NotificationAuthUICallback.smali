.class public abstract Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationAuthUICallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/passport/uicontroller/UIControllerFuture$UICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NotificationAuthUICallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V
    .registers 2

    .line 363
    check-cast p1, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationAuthFuture;

    .line 364
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationAuthUICallback;->a(Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationAuthFuture;)V

    return-void
.end method

.method protected abstract a(Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationAuthFuture;)V
.end method
