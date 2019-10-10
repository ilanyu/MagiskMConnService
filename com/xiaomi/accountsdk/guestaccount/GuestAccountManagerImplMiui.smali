.class Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;
.super Lcom/xiaomi/accountsdk/guestaccount/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$GuestAccountServiceConnector;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui; = null

.field private static final c:Ljava/lang/String; = "com.xiaomi.account"

.field private static final d:Ljava/lang/String; = "com.xiaomi.account.action.BIND_GUEST_ACCOUNT_SERVICE"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/h;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static declared-synchronized b(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;
    .registers 3

    const-class v0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;

    monitor-enter v0

    .line 20
    :try_start_3
    sget-object v1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;->b:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;

    if-nez v1, :cond_e

    .line 21
    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;

    invoke-direct {v1, p0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;->b:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;

    .line 23
    :cond_e
    sget-object p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;->b:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 19
    monitor-exit v0

    throw p0
.end method

.method static c(Landroid/content/Context;)Z
    .registers 3

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.account.action.BIND_GUEST_ACCOUNT_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.account"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method


# virtual methods
.method protected a(Lcom/xiaomi/accountsdk/guestaccount/data/f;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
    .registers 4

    .line 51
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/b;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/b;-><init>()V

    .line 52
    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$1;-><init>(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;Lcom/xiaomi/accountsdk/futureservice/c;Lcom/xiaomi/accountsdk/guestaccount/data/f;)V

    .line 60
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$1;->a()Z

    return-object v0
.end method

.method protected a(Lcom/xiaomi/accountsdk/guestaccount/data/f;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
    .registers 5

    .line 67
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/b;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/b;-><init>()V

    .line 68
    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$2;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$2;-><init>(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;Lcom/xiaomi/accountsdk/futureservice/c;Lcom/xiaomi/accountsdk/guestaccount/data/f;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)V

    .line 76
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$2;->a()Z

    return-object v0
.end method

.method public a(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/xiaomi/accountsdk/guestaccount/a;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/xiaomi/accountsdk/guestaccount/f;)V
    .registers 2

    return-void
.end method

.method protected b(Lcom/xiaomi/accountsdk/guestaccount/data/f;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
    .registers 5

    .line 84
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/b;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/b;-><init>()V

    .line 85
    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$3;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$3;-><init>(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;Lcom/xiaomi/accountsdk/futureservice/c;Lcom/xiaomi/accountsdk/guestaccount/data/f;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)V

    .line 94
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$3;->a()Z

    return-object v0
.end method

.method public b()V
    .registers 3

    .line 100
    new-instance v0, Lcom/xiaomi/accountsdk/futureservice/c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/futureservice/c;-><init>()V

    .line 101
    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$4;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$4;-><init>(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;Lcom/xiaomi/accountsdk/futureservice/c;)V

    .line 108
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui$4;->a()Z

    return-void
.end method

.method public c()V
    .registers 3

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "don NOT call this for GuestAccountManagerImplMiui"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()V
    .registers 3

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "don NOT call this for GuestAccountManagerImplMiui"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
