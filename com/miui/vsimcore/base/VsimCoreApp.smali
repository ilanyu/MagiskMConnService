.class public Lcom/miui/vsimcore/base/VsimCoreApp;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field protected static a:Lcom/miui/vsimcore/base/VsimCoreApp; = null

.field private static final d:Ljava/lang/String; = "VSC-VsimCoreApp"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private e:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const-string v0, "2882303761517789113"

    .line 17
    iput-object v0, p0, Lcom/miui/vsimcore/base/VsimCoreApp;->b:Ljava/lang/String;

    const-string v0, "5531778943113"

    .line 18
    iput-object v0, p0, Lcom/miui/vsimcore/base/VsimCoreApp;->c:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/miui/vsimcore/base/VsimCoreApp;
    .registers 2

    .line 34
    sget-object v0, Lcom/miui/vsimcore/base/VsimCoreApp;->a:Lcom/miui/vsimcore/base/VsimCoreApp;

    if-eqz v0, :cond_7

    .line 37
    sget-object v0, Lcom/miui/vsimcore/base/VsimCoreApp;->a:Lcom/miui/vsimcore/base/VsimCoreApp;

    return-object v0

    .line 35
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No VsimCoreApp here!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 3

    .line 27
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 28
    sput-object p0, Lcom/miui/vsimcore/base/VsimCoreApp;->a:Lcom/miui/vsimcore/base/VsimCoreApp;

    const-string p1, "VSC-VsimCoreApp"

    const-string v0, "attachBaseContext"

    .line 29
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b()Lcom/android/volley/RequestQueue;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/miui/vsimcore/base/VsimCoreApp;->e:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_f

    .line 51
    new-instance v0, Lcom/miui/vsimcore/network/c;

    invoke-direct {v0}, Lcom/miui/vsimcore/network/c;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/u;->a(Landroid/content/Context;Lcom/android/volley/toolbox/d;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/vsimcore/base/VsimCoreApp;->e:Lcom/android/volley/RequestQueue;

    .line 53
    :cond_f
    iget-object v0, p0, Lcom/miui/vsimcore/base/VsimCoreApp;->e:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .line 42
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 43
    invoke-virtual {p0}, Lcom/miui/vsimcore/base/VsimCoreApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/vsimcore/base/VsimCoreApp;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/vsimcore/base/VsimCoreApp;->c:Ljava/lang/String;

    const-string v3, "default"

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 44
    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/f;->a(IJ)V

    const/4 v0, 0x1

    .line 46
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/f;->b(Z)V

    return-void
.end method
