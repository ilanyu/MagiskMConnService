.class public interface abstract Lcom/xiaomi/passport/uicontroller/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/xiaomi/passport/uicontroller/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Lcom/xiaomi/passport/uicontroller/MiPassportUIControllerFactory$1;

    invoke-direct {v0}, Lcom/xiaomi/passport/uicontroller/MiPassportUIControllerFactory$1;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/uicontroller/a;->a:Lcom/xiaomi/passport/uicontroller/a;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/passport/uicontroller/MiPassportUIController;
.end method
