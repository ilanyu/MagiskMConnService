.class public final Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->d:I

    return p0
.end method

.method static synthetic e(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;)Ljava/lang/String;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->f:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;
    .registers 2

    .line 50
    iput p1, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->d:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
    .registers 2

    .line 65
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;-><init>(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->f:Ljava/lang/String;

    return-object p0
.end method
