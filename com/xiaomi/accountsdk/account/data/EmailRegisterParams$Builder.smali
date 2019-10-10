.class public final Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;->f:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Application;)Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;
    .registers 2

    .line 55
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/h;->a(Landroid/app/Application;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;
    .registers 3

    .line 44
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;->c:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams;
    .registers 2

    .line 65
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams;

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams;-><init>(Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/EmailRegisterParams$Builder;->f:Ljava/lang/String;

    return-object p0
.end method
