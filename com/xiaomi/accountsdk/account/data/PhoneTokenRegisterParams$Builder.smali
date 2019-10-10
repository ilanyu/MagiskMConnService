.class public Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->c:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;)Z
    .registers 1

    .line 47
    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->e:Z

    return p0
.end method

.method static synthetic f(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->g:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Application;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;
    .registers 2

    .line 78
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/h;->a(Landroid/app/Application;)V

    return-object p0
.end method

.method public a(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->c:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;
    .registers 3

    .line 57
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->a:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->e:Z

    .line 89
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;-><init>(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->g:Ljava/lang/String;

    return-object p0
.end method
