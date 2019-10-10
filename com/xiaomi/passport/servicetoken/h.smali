.class Lcom/xiaomi/passport/servicetoken/h;
.super Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;
.source "SourceFile"


# instance fields
.field private final a:Lcom/xiaomi/passport/servicetoken/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/c;)V
    .registers 3

    .line 16
    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;-><init>()V

    if-eqz p1, :cond_8

    .line 20
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/h;->a:Lcom/xiaomi/passport/servicetoken/c;

    return-void

    .line 18
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "amUtil == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .registers 3

    .line 79
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    invoke-direct {v0, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->c:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 80
    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    if-nez p1, :cond_6

    goto :goto_1d

    :cond_6
    const-string v1, ","

    .line 116
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 117
    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    aget-object v0, p1, p0

    :cond_1c
    return-object v0

    :cond_1d
    :goto_1d
    return-object v0
.end method


# virtual methods
.method final a(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .registers 9

    .line 85
    iget-object v0, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->f:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->b:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-ne v0, v1, :cond_7d

    iget-object v0, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->c:Ljava/lang/String;

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7d

    iget-object v0, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->d:Ljava/lang/String;

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_7d

    .line 91
    :cond_17
    iget-object v0, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/h;->a:Lcom/xiaomi/passport/servicetoken/c;

    invoke-interface {v1, p1, p2}, Lcom/xiaomi/passport/servicetoken/c;->a(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/h;->a:Lcom/xiaomi/passport/servicetoken/c;

    iget-object v3, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->c:Ljava/lang/String;

    invoke-interface {v2, p1, v3, p2}, Lcom/xiaomi/passport/servicetoken/c;->a(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {v0, v2}, Lcom/xiaomi/passport/servicetoken/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    iget-object v3, p0, Lcom/xiaomi/passport/servicetoken/h;->a:Lcom/xiaomi/passport/servicetoken/c;

    iget-object v4, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->c:Ljava/lang/String;

    invoke-interface {v3, p1, v4, p2}, Lcom/xiaomi/passport/servicetoken/c;->b(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {v0, p1}, Lcom/xiaomi/passport/servicetoken/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 98
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    iget-object v3, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->c:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;-><init>(Ljava/lang/String;)V

    iget-object v3, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->d:Ljava/lang/String;

    .line 99
    invoke-virtual {v0, v3}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v3, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->e:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v3}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v3, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->f:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 101
    invoke-virtual {v0, v3}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v3, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->g:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v3}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v3, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->h:Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v3}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-boolean p3, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->m:Z

    .line 104
    invoke-virtual {v0, p3}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a(Z)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object p3

    .line 105
    invoke-virtual {p3, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->g(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object p3

    .line 106
    invoke-virtual {p3, v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->e(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object p3

    .line 107
    invoke-virtual {p3, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->f(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object p1

    iget-object p2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 108
    invoke-virtual {p1, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->h(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1

    :cond_7d
    :goto_7d
    return-object p3
.end method

.method public a(Landroid/content/Context;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method protected final b(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .registers 5

    .line 26
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/h;->a:Lcom/xiaomi/passport/servicetoken/c;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/servicetoken/c;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_f

    .line 27
    iget-object p1, p2, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/servicetoken/h;->a(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1

    .line 30
    :cond_f
    invoke-static {p2}, Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter;->c(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Ljava/lang/String;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/h;->a:Lcom/xiaomi/passport/servicetoken/c;

    invoke-interface {v1, p1, v0}, Lcom/xiaomi/passport/servicetoken/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    new-instance p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    iget-object p2, p2, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->c:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .registers 6

    .line 37
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/h;->a:Lcom/xiaomi/passport/servicetoken/c;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/servicetoken/c;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_d

    .line 39
    invoke-direct {p0, p2}, Lcom/xiaomi/passport/servicetoken/h;->a(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1

    .line 42
    :cond_d
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/h;->a:Lcom/xiaomi/passport/servicetoken/c;

    invoke-interface {v1, p1, p2, v0}, Lcom/xiaomi/passport/servicetoken/c;->d(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    const/4 v2, 0x1

    .line 44
    invoke-static {p2, v1, v2}, Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p2

    .line 45
    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/passport/servicetoken/h;->a(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1

    .line 50
    :cond_23
    :try_start_23
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/h;->a:Lcom/xiaomi/passport/servicetoken/c;

    invoke-interface {v1, p1, p2, v0}, Lcom/xiaomi/passport/servicetoken/c;->c(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    invoke-interface {v1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2f} :catch_38

    .line 54
    invoke-static {v1, p2}, Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter;->a(Landroid/os/Bundle;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p2

    .line 55
    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/passport/servicetoken/h;->a(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1

    :catch_38
    move-exception p1

    .line 52
    invoke-static {p2, p1}, Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1
.end method

.method protected c(Landroid/content/Context;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
    .registers 5

    .line 65
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/h;->a:Lcom/xiaomi/passport/servicetoken/c;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/servicetoken/c;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_15

    .line 67
    new-instance p1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;

    sget-object v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->d:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    invoke-direct {p1, v1, v0}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;-><init>(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->a()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    move-result-object p1

    return-object p1

    .line 72
    :cond_15
    new-instance v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;

    sget-object v2, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->a:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;-><init>(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 74
    invoke-virtual {v1, v0, p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->a(ZLandroid/accounts/Account;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->a()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    move-result-object p1

    return-object p1
.end method
