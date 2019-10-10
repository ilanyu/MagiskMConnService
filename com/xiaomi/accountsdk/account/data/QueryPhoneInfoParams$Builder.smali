.class public Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;)Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;->f:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;
    .registers 3

    .line 41
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;->f:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    if-eqz p1, :cond_c

    .line 43
    iget-object v0, p1, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;->d:Ljava/lang/String;

    .line 44
    iget-object p1, p1, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;->e:Ljava/lang/String;

    :cond_c
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;
    .registers 3

    .line 35
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;->a:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;
    .registers 3

    .line 50
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;-><init>(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$1;)V

    return-object v0
.end method
