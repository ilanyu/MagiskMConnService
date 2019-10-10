.class final Lcom/xiaomi/passport/uicontroller/MiPassportUIControllerFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/passport/uicontroller/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/uicontroller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/passport/uicontroller/MiPassportUIController;
    .registers 5

    .line 16
    new-instance v0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;

    invoke-direct {v0, p1, p2, p3}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
