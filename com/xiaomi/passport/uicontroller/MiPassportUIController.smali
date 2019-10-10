.class public Lcom/xiaomi/passport/uicontroller/MiPassportUIController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/uicontroller/MiPassportUIController$UIConnector;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MiPassportUIController"

.field private static final b:Ljava/lang/String; = "com.xiaomi.account.action.UI_CONTROLLER_SERVICE"

.field private static final c:Ljava/lang/String; = "com.xiaomi.account"

.field private static volatile d:Lcom/xiaomi/passport/uicontroller/MiPassportUIController;

.field private static volatile h:Lcom/xiaomi/passport/uicontroller/a;


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    sget-object v0, Lcom/xiaomi/passport/uicontroller/a;->a:Lcom/xiaomi/passport/uicontroller/a;

    sput-object v0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->h:Lcom/xiaomi/passport/uicontroller/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->e:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->f:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/passport/uicontroller/MiPassportUIController;)Landroid/content/Context;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->e:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/passport/uicontroller/MiPassportUIController;
    .registers 4

    .line 55
    sget-object v0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->h:Lcom/xiaomi/passport/uicontroller/a;

    const-string v1, "com.xiaomi.account.action.UI_CONTROLLER_SERVICE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/xiaomi/passport/uicontroller/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/passport/uicontroller/MiPassportUIController;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .registers 1

    .line 47
    sget-object v0, Lcom/xiaomi/passport/uicontroller/a;->a:Lcom/xiaomi/passport/uicontroller/a;

    sput-object v0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->h:Lcom/xiaomi/passport/uicontroller/a;

    return-void
.end method

.method public static a(Lcom/xiaomi/passport/uicontroller/a;)V
    .registers 1

    .line 51
    sput-object p0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->h:Lcom/xiaomi/passport/uicontroller/a;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/xiaomi/passport/uicontroller/MiPassportUIController;
    .registers 4

    .line 59
    sget-object v0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->h:Lcom/xiaomi/passport/uicontroller/a;

    const-string v1, "com.xiaomi.account.action.UI_CONTROLLER_SERVICE"

    const-string v2, "com.xiaomi.account"

    invoke-interface {v0, p0, v1, v2}, Lcom/xiaomi/passport/uicontroller/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/passport/uicontroller/MiPassportUIController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/passport/uicontroller/MiPassportUIController;)Ljava/lang/String;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/passport/uicontroller/MiPassportUIController;)Ljava/lang/String;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->g:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$AddOrUpdateUICallback;)Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$AddOrUpdateAccountFuture;
    .registers 4

    .line 105
    new-instance v0, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$AddOrUpdateAccountFuture;

    invoke-direct {v0, p2}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$AddOrUpdateAccountFuture;-><init>(Lcom/xiaomi/passport/uicontroller/UIControllerFuture$UICallback;)V

    .line 106
    new-instance p2, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$4;

    invoke-direct {p2, p0, v0, p1}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$4;-><init>(Lcom/xiaomi/passport/uicontroller/MiPassportUIController;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    .line 112
    invoke-virtual {p2}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$4;->a()Z

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationAuthUICallback;)Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationAuthFuture;
    .registers 4

    .line 118
    new-instance v0, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationAuthFuture;

    invoke-direct {v0, p2}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationAuthFuture;-><init>(Lcom/xiaomi/passport/uicontroller/UIControllerFuture$UICallback;)V

    .line 119
    new-instance p2, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$5;

    invoke-direct {p2, p0, v0, p1}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$5;-><init>(Lcom/xiaomi/passport/uicontroller/MiPassportUIController;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$5;->a()Z

    return-object v0
.end method

.method public a(Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginUICallback;)Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;
    .registers 4

    .line 76
    new-instance v0, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;

    invoke-direct {v0, p2}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationLoginFuture;-><init>(Lcom/xiaomi/passport/uicontroller/UIControllerFuture$UICallback;)V

    .line 77
    new-instance p2, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$2;

    invoke-direct {p2, p0, v0, p1}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$2;-><init>(Lcom/xiaomi/passport/uicontroller/MiPassportUIController;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;)V

    .line 82
    invoke-virtual {p2}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$2;->a()Z

    return-object v0
.end method

.method public a(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$PasswordLoginUICallback;)Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$PasswordLoginFuture;
    .registers 4

    .line 64
    new-instance v0, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$PasswordLoginFuture;

    invoke-direct {v0, p2}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$PasswordLoginFuture;-><init>(Lcom/xiaomi/passport/uicontroller/UIControllerFuture$UICallback;)V

    .line 65
    new-instance p2, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$1;

    invoke-direct {p2, p0, v0, p1}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$1;-><init>(Lcom/xiaomi/passport/uicontroller/MiPassportUIController;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)V

    .line 70
    invoke-virtual {p2}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$1;->a()Z

    return-object v0
.end method

.method public a(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginUICallback;)Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;
    .registers 4

    .line 88
    new-instance v0, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;

    invoke-direct {v0, p2}, Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$Step2LoginFuture;-><init>(Lcom/xiaomi/passport/uicontroller/UIControllerFuture$UICallback;)V

    .line 89
    new-instance p2, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$3;

    invoke-direct {p2, p0, v0, p1}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$3;-><init>(Lcom/xiaomi/passport/uicontroller/MiPassportUIController;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;)V

    .line 94
    invoke-virtual {p2}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController$3;->a()Z

    return-object v0
.end method

.method public a(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/passport/uicontroller/MiPassportUIController;->a(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$AddOrUpdateUICallback;)Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$AddOrUpdateAccountFuture;

    return-void
.end method
