.class final Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;
.super Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;,
        Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnectorBase;,
        Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnector;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ServiceTokenUtilMiui"

.field private static volatile b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile c:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->c:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;-><init>()V

    return-void
.end method

.method private a(Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;)Z
    .registers 3

    .line 201
    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 202
    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->a()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    iget-object p1, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->f:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->j:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-eq p1, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method private b()Lcom/xiaomi/passport/servicetoken/h;
    .registers 4

    .line 197
    new-instance v0, Lcom/xiaomi/passport/servicetoken/h;

    new-instance v1, Lcom/xiaomi/passport/servicetoken/b;

    new-instance v2, Lcom/xiaomi/passport/servicetoken/a;

    invoke-direct {v2}, Lcom/xiaomi/passport/servicetoken/a;-><init>()V

    invoke-direct {v1, v2}, Lcom/xiaomi/passport/servicetoken/b;-><init>(Lcom/xiaomi/passport/servicetoken/a;)V

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/h;-><init>(Lcom/xiaomi/passport/servicetoken/c;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .registers 5

    .line 119
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 123
    :cond_a
    const-class v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;

    monitor-enter v0

    .line 124
    :try_start_d
    sget-object v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->c:Ljava/lang/Boolean;

    if-eqz v2, :cond_19

    .line 125
    sget-object p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->c:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 127
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_4d

    .line 129
    new-instance v0, Lcom/xiaomi/accountsdk/futureservice/c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/futureservice/c;-><init>()V

    .line 130
    new-instance v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$4;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;Landroid/content/Context;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V

    .line 135
    invoke-virtual {v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$4;->a()Z

    .line 137
    :try_start_27
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/futureservice/ClientFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 138
    const-class v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;

    monitor-enter v0
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_30} :catch_44
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_27 .. :try_end_30} :catch_3b

    .line 139
    :try_start_30
    sput-object p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->c:Ljava/lang/Boolean;

    .line 140
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_38

    .line 141
    :try_start_33
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_37} :catch_44
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_33 .. :try_end_37} :catch_3b

    return p1

    :catchall_38
    move-exception p1

    .line 140
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw p1
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3b} :catch_44
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3a .. :try_end_3b} :catch_3b

    :catch_3b
    move-exception p1

    const-string v0, "ServiceTokenUtilMiui"

    const-string v2, ""

    .line 146
    invoke-static {v0, v2, p1}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_44
    move-exception p1

    const-string v0, "ServiceTokenUtilMiui"

    const-string v2, ""

    .line 143
    invoke-static {v0, v2, p1}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catchall_4d
    move-exception p1

    .line 127
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method public b(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .registers 5

    .line 65
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 66
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;-><init>(Lcom/xiaomi/accountsdk/futureservice/ClientFuture$ClientCallback;)V

    .line 68
    new-instance v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$2;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$2;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)V

    .line 83
    invoke-virtual {v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$2;->a()Z

    .line 85
    invoke-direct {p0, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 86
    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->a()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1

    .line 88
    :cond_21
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 92
    :cond_27
    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->b()Lcom/xiaomi/passport/servicetoken/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/passport/servicetoken/h;->b(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .registers 11

    if-eqz p2, :cond_19

    const-string v0, "weblogin:"

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->b()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 38
    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->b()Lcom/xiaomi/passport/servicetoken/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/passport/servicetoken/h;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1

    .line 41
    :cond_19
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 43
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;-><init>(Lcom/xiaomi/accountsdk/futureservice/ClientFuture$ClientCallback;)V

    .line 45
    new-instance v7, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$1;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;Ljava/lang/String;Landroid/content/Context;)V

    .line 51
    invoke-virtual {v7}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$1;->a()Z

    .line 53
    invoke-direct {p0, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 54
    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->a()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1

    .line 56
    :cond_40
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 60
    :cond_46
    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->b()Lcom/xiaomi/passport/servicetoken/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/passport/servicetoken/h;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1
.end method

.method protected c(Landroid/content/Context;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
    .registers 5

    .line 153
    new-instance v0, Lcom/xiaomi/passport/servicetoken/b;

    new-instance v1, Lcom/xiaomi/passport/servicetoken/a;

    invoke-direct {v1}, Lcom/xiaomi/passport/servicetoken/a;-><init>()V

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/b;-><init>(Lcom/xiaomi/passport/servicetoken/a;)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/servicetoken/b;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 155
    new-instance p1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;

    sget-object v2, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->a:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    invoke-direct {p1, v2, v1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;-><init>(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 156
    invoke-virtual {p1, v1, v0}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->a(ZLandroid/accounts/Account;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->a()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    move-result-object p1

    return-object p1

    .line 159
    :cond_22
    new-instance v0, Lcom/xiaomi/accountsdk/futureservice/c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/futureservice/c;-><init>()V

    .line 161
    new-instance v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$5;

    invoke-direct {v2, p0, p1, v0, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$5;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;Landroid/content/Context;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;Landroid/content/Context;)V

    .line 180
    invoke-virtual {v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$5;->a()Z

    .line 182
    :try_start_2f
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/futureservice/ClientFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_35} :catch_4e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2f .. :try_end_35} :catch_36

    return-object p1

    :catch_36
    move-exception p1

    const-string v0, "ServiceTokenUtilMiui"

    const-string v1, "setSystemAccountVisible"

    .line 189
    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;

    sget-object v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->g:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 191
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;-><init>(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->a()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    move-result-object p1

    return-object p1

    :catch_4e
    move-exception p1

    const-string v0, "ServiceTokenUtilMiui"

    const-string v2, "setSystemAccountVisible"

    .line 184
    invoke-static {v0, v2, p1}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    new-instance p1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;

    sget-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->f:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    invoke-direct {p1, v0, v1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;-><init>(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->a()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/content/Context;)Z
    .registers 5

    .line 96
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 100
    :cond_a
    new-instance v0, Lcom/xiaomi/accountsdk/futureservice/c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/futureservice/c;-><init>()V

    .line 101
    new-instance v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$3;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;Landroid/content/Context;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V

    .line 106
    invoke-virtual {v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$3;->a()Z

    .line 108
    :try_start_17
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/futureservice/ClientFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_21} :catch_2b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_17 .. :try_end_21} :catch_22

    return p1

    :catch_22
    move-exception p1

    const-string v0, "ServiceTokenUtilMiui"

    const-string v2, ""

    .line 113
    invoke-static {v0, v2, p1}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_2b
    move-exception p1

    const-string v0, "ServiceTokenUtilMiui"

    const-string v2, ""

    .line 110
    invoke-static {v0, v2, p1}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
