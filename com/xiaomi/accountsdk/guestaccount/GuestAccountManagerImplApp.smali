.class Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;
.super Lcom/xiaomi/accountsdk/guestaccount/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$OnlineRunnable;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "GuestAccountManagerApp"

.field private static volatile c:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;


# instance fields
.field private d:Lcom/xiaomi/accountsdk/guestaccount/a;

.field private final e:Lcom/xiaomi/accountsdk/guestaccount/data/e;

.field private final f:Lcom/xiaomi/accountsdk/guestaccount/i;

.field private final g:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/e;)V
    .registers 5

    .line 30
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/i;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/guestaccount/i;-><init>()V

    .line 30
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;-><init>(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/e;Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;Lcom/xiaomi/accountsdk/guestaccount/i;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/e;Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;Lcom/xiaomi/accountsdk/guestaccount/i;)V
    .registers 5

    .line 38
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/h;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_20

    if-eqz p4, :cond_18

    if-eqz p2, :cond_10

    .line 50
    iput-object p2, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->e:Lcom/xiaomi/accountsdk/guestaccount/data/e;

    .line 51
    iput-object p3, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->g:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;

    .line 52
    iput-object p4, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->f:Lcom/xiaomi/accountsdk/guestaccount/i;

    return-void

    .line 47
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "storage == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "onlineFetcher == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static declared-synchronized a(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/e;)Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;
    .registers 4

    const-class v0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;

    monitor-enter v0

    .line 23
    :try_start_3
    sget-object v1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->c:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;

    if-nez v1, :cond_e

    .line 24
    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;-><init>(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/e;)V

    sput-object v1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->c:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;

    .line 26
    :cond_e
    sget-object p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->c:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 22
    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;)Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->g:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;

    return-object p0
.end method

.method private a(ZLcom/xiaomi/accountsdk/guestaccount/data/f;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
    .registers 5

    if-eqz p1, :cond_d

    .line 99
    iget-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->f:Lcom/xiaomi/accountsdk/guestaccount/i;

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/i;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    :cond_d
    iget-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->f:Lcom/xiaomi/accountsdk/guestaccount/i;

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->a:Landroid/content/Context;

    .line 102
    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->b()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/i;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object p1

    .line 104
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->b(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 105
    new-instance p2, Lcom/xiaomi/accountsdk/guestaccount/data/b;

    invoke-direct {p2}, Lcom/xiaomi/accountsdk/guestaccount/data/b;-><init>()V

    .line 106
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->a(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaomi/accountsdk/guestaccount/data/b;->a(Ljava/lang/Object;)V

    const-string p1, "GuestAccountManagerApp"

    const-string v0, "getGuestAccount from cache"

    .line 107
    invoke-static {p1, v0}, Lcom/xiaomi/accountsdk/utils/d;->f(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 110
    :cond_38
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->a(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string p2, "GuestAccountManagerApp"

    const-string v0, "getGuestAccount from login"

    .line 111
    invoke-static {p2, v0}, Lcom/xiaomi/accountsdk/utils/d;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance p2, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$1;

    invoke-direct {p2, p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$1;-><init>(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V

    .line 124
    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$1;->b()Lcom/xiaomi/accountsdk/guestaccount/data/b;

    move-result-object p1

    return-object p1

    :cond_4f
    const-string p1, "GuestAccountManagerApp"

    const-string v0, "getGuestAccount from register"

    .line 127
    invoke-static {p1, v0}, Lcom/xiaomi/accountsdk/utils/d;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance p1, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$2;

    invoke-direct {p1, p0, p2}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$2;-><init>(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;Lcom/xiaomi/accountsdk/guestaccount/data/f;)V

    .line 137
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp$2;->b()Lcom/xiaomi/accountsdk/guestaccount/data/b;

    move-result-object p1

    return-object p1
.end method

.method static a(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Z
    .registers 2

    if-eqz p0, :cond_1c

    .line 194
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->a:Ljava/lang/String;

    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->b:Ljava/lang/String;

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object p0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->f:Ljava/lang/String;

    .line 197
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method static synthetic b(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;)Lcom/xiaomi/accountsdk/guestaccount/data/e;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->e:Lcom/xiaomi/accountsdk/guestaccount/data/e;

    return-object p0
.end method

.method static b(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Z
    .registers 2

    if-eqz p0, :cond_34

    .line 201
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->a:Ljava/lang/String;

    .line 202
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->b:Ljava/lang/String;

    .line 203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->d:Ljava/lang/String;

    .line 204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->e:Ljava/lang/String;

    .line 205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->h:Ljava/lang/String;

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object p0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->i:Ljava/lang/String;

    .line 207
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_34

    const/4 p0, 0x1

    goto :goto_35

    :cond_34
    const/4 p0, 0x0

    :goto_35
    return p0
.end method

.method static synthetic c(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;)Lcom/xiaomi/accountsdk/guestaccount/i;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->f:Lcom/xiaomi/accountsdk/guestaccount/i;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/xiaomi/accountsdk/guestaccount/data/f;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
    .registers 5

    .line 76
    new-instance p1, Lcom/xiaomi/accountsdk/guestaccount/data/b;

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/b;-><init>()V

    .line 77
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->f:Lcom/xiaomi/accountsdk/guestaccount/i;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->a:Landroid/content/Context;

    .line 78
    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/guestaccount/i;->a(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->a(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/b;->a(Ljava/lang/Object;)V

    return-object p1
.end method

.method protected a(Lcom/xiaomi/accountsdk/guestaccount/data/f;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
    .registers 3

    const/4 p2, 0x0

    .line 86
    invoke-direct {p0, p2, p1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->a(ZLcom/xiaomi/accountsdk/guestaccount/data/f;)Lcom/xiaomi/accountsdk/guestaccount/data/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester;)V
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->g:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->a(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountHttpRequester;)V

    return-void
.end method

.method public a(Lcom/xiaomi/accountsdk/guestaccount/a;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->d:Lcom/xiaomi/accountsdk/guestaccount/a;

    return-void
.end method

.method public a(Lcom/xiaomi/accountsdk/guestaccount/f;)V
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->g:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountOnlineFetcher;->a(Lcom/xiaomi/accountsdk/guestaccount/f;)V

    return-void
.end method

.method protected b(Lcom/xiaomi/accountsdk/guestaccount/data/f;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
    .registers 3

    const/4 p2, 0x1

    .line 92
    invoke-direct {p0, p2, p1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->a(ZLcom/xiaomi/accountsdk/guestaccount/data/f;)Lcom/xiaomi/accountsdk/guestaccount/data/b;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c()V
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->d:Lcom/xiaomi/accountsdk/guestaccount/a;

    if-nez v0, :cond_c

    const-string v0, "GuestAccountManagerApp"

    const-string v1, "null backup util. Bail."

    .line 149
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 154
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->f:Lcom/xiaomi/accountsdk/guestaccount/i;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/i;->a(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v0

    .line 156
    invoke-static {v0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->a(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v0, "GuestAccountManagerApp"

    const-string v1, "fail to checkPassToken. Can not save to backup. Bail."

    .line 157
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 161
    :cond_22
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->d:Lcom/xiaomi/accountsdk/guestaccount/a;

    invoke-interface {v1, v0}, Lcom/xiaomi/accountsdk/guestaccount/a;->a(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V

    return-void
.end method

.method public d()V
    .registers 4

    const-string v0, "GuestAccountManagerApp"

    const-string v1, "restoreFromBackup called."

    .line 166
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/d;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->d:Lcom/xiaomi/accountsdk/guestaccount/a;

    if-nez v0, :cond_13

    const-string v0, "GuestAccountManagerApp"

    const-string v1, "null backup util. Bail."

    .line 169
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 174
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->a()Lcom/xiaomi/accountsdk/guestaccount/data/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/b;->a()Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->d()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v0

    if-eqz v0, :cond_29

    const-string v0, "GuestAccountManagerApp"

    const-string v1, "already has account. Can not restore. Bail."

    .line 175
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 179
    :cond_29
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->d:Lcom/xiaomi/accountsdk/guestaccount/a;

    invoke-interface {v0}, Lcom/xiaomi/accountsdk/guestaccount/a;->a()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v0

    .line 181
    invoke-static {v0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->a(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Z

    move-result v1

    if-nez v1, :cond_3d

    const-string v0, "GuestAccountManagerApp"

    const-string v1, "fail to checkPassToken. Can not restore from backup. Bail."

    .line 182
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 186
    :cond_3d
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->f:Lcom/xiaomi/accountsdk/guestaccount/i;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/accountsdk/guestaccount/i;->a(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_44} :catch_45

    goto :goto_4b

    :catch_45
    move-exception v0

    const-string v1, "GuestAccountManagerApp"

    .line 189
    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4b
    return-void
.end method
