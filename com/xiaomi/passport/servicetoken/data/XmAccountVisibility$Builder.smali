.class public Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:Landroid/accounts/Account;

.field private e:I

.field private f:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;Ljava/lang/String;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->a:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->e:I

    .line 40
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p2, p1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->i:Ljava/lang/String;

    :cond_11
    iput-object p2, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->a:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)Ljava/lang/String;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)Z
    .registers 1

    .line 29
    iget-boolean p0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->c:Z

    return p0
.end method

.method static synthetic d(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)Landroid/accounts/Account;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->d:Landroid/accounts/Account;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)I
    .registers 1

    .line 29
    iget p0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->e:I

    return p0
.end method

.method static synthetic f(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)Landroid/content/Intent;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->f:Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->f:Landroid/content/Intent;

    return-object p0
.end method

.method public a(ZLandroid/accounts/Account;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;
    .registers 3

    .line 44
    iput-boolean p1, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->c:Z

    .line 45
    iput-object p2, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->d:Landroid/accounts/Account;

    return-object p0
.end method

.method public a()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
    .registers 2

    .line 55
    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;-><init>(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)V

    return-object v0
.end method
