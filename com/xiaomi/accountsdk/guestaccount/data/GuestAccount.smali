.class public final Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/lang/String; = "userid"

.field private static final l:Ljava/lang/String; = "cuserid"

.field private static final m:Ljava/lang/String; = "sid"

.field private static final n:Ljava/lang/String; = "servicetoken"

.field private static final o:Ljava/lang/String; = "security"

.field private static final p:Ljava/lang/String; = "passtoken"

.field private static final q:Ljava/lang/String; = "callback"

.field private static final r:Ljava/lang/String; = "slh"

.field private static final s:Ljava/lang/String; = "ph"

.field private static final t:Ljava/lang/String; = "type"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Lcom/xiaomi/accountsdk/guestaccount/data/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 167
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$1;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$1;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "userid"

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->a:Ljava/lang/String;

    const-string v0, "cuserid"

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->b:Ljava/lang/String;

    const-string v0, "sid"

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->c:Ljava/lang/String;

    const-string v0, "servicetoken"

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->d:Ljava/lang/String;

    const-string v0, "security"

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->e:Ljava/lang/String;

    const-string v0, "passtoken"

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->f:Ljava/lang/String;

    const-string v0, "callback"

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->g:Ljava/lang/String;

    const-string v0, "slh"

    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->h:Ljava/lang/String;

    const-string v0, "ph"

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->i:Ljava/lang/String;

    const-string v0, "type"

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/e;->a(I)Lcom/xiaomi/accountsdk/guestaccount/data/e;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->j:Lcom/xiaomi/accountsdk/guestaccount/data/e;

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->a(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->a:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->b(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->b:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->c(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->c:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->d(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->d:Ljava/lang/String;

    .line 35
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->e(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->e:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->f(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->f:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->g(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->g:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->h(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->h:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->i(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->i:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->j(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;)Lcom/xiaomi/accountsdk/guestaccount/data/e;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->j:Lcom/xiaomi/accountsdk/guestaccount/data/e;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$1;)V
    .registers 3

    .line 7
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;-><init>(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;
    .registers 3

    .line 59
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->c:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->a:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->b:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->f(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->d:Ljava/lang/String;

    .line 64
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->e:Ljava/lang/String;

    .line 65
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->g:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->g(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->h:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->h(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->i:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->i(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->j:Lcom/xiaomi/accountsdk/guestaccount/data/e;

    .line 69
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->a(Lcom/xiaomi/accountsdk/guestaccount/data/e;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->a()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/xiaomi/accountsdk/guestaccount/data/e;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;
    .registers 4

    .line 74
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->c:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->a:Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->b:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->f:Ljava/lang/String;

    .line 78
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->f(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->d:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->e:Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->g:Ljava/lang/String;

    .line 81
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->g(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->h:Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->h(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->i:Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->i(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->a(Lcom/xiaomi/accountsdk/guestaccount/data/e;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount$Builder;->a()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object p1

    return-object p1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 108
    :cond_4
    instance-of v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 110
    :cond_a
    check-cast p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    .line 112
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->a:Ljava/lang/String;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_1f

    :cond_1b
    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->a:Ljava/lang/String;

    if-eqz v1, :cond_20

    :goto_1f
    return v2

    .line 113
    :cond_20
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->b:Ljava/lang/String;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_33

    :cond_2f
    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->b:Ljava/lang/String;

    if-eqz v1, :cond_34

    :goto_33
    return v2

    .line 114
    :cond_34
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->c:Ljava/lang/String;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    goto :goto_47

    :cond_43
    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->c:Ljava/lang/String;

    if-eqz v1, :cond_48

    :goto_47
    return v2

    .line 115
    :cond_48
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->d:Ljava/lang/String;

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    goto :goto_5b

    :cond_57
    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->d:Ljava/lang/String;

    if-eqz v1, :cond_5c

    :goto_5b
    return v2

    .line 118
    :cond_5c
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->e:Ljava/lang/String;

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    goto :goto_6f

    :cond_6b
    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->e:Ljava/lang/String;

    if-eqz v1, :cond_70

    :goto_6f
    return v2

    .line 120
    :cond_70
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->f:Ljava/lang/String;

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_84

    goto :goto_83

    :cond_7f
    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->f:Ljava/lang/String;

    if-eqz v1, :cond_84

    :goto_83
    return v2

    .line 122
    :cond_84
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->g:Ljava/lang/String;

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_98

    goto :goto_97

    :cond_93
    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->g:Ljava/lang/String;

    if-eqz v1, :cond_98

    :goto_97
    return v2

    .line 124
    :cond_98
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->h:Ljava/lang/String;

    if-eqz v1, :cond_a7

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ac

    goto :goto_ab

    :cond_a7
    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->h:Ljava/lang/String;

    if-eqz v1, :cond_ac

    :goto_ab
    return v2

    .line 125
    :cond_ac
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->i:Ljava/lang/String;

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c0

    goto :goto_bf

    :cond_bb
    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->i:Ljava/lang/String;

    if-eqz v1, :cond_c0

    :goto_bf
    return v2

    .line 126
    :cond_c0
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->j:Lcom/xiaomi/accountsdk/guestaccount/data/e;

    iget-object p1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->j:Lcom/xiaomi/accountsdk/guestaccount/data/e;

    if-ne v1, p1, :cond_c7

    goto :goto_c8

    :cond_c7
    const/4 v0, 0x0

    :goto_c8
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    mul-int/lit8 v0, v0, 0x1f

    .line 133
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->b:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 134
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->c:Ljava/lang/String;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 135
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->d:Ljava/lang/String;

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    :goto_39
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 136
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->e:Ljava/lang/String;

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_48

    :cond_47
    const/4 v2, 0x0

    :goto_48
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 137
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->f:Ljava/lang/String;

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_57

    :cond_56
    const/4 v2, 0x0

    :goto_57
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 138
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->g:Ljava/lang/String;

    if-eqz v2, :cond_65

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_66

    :cond_65
    const/4 v2, 0x0

    :goto_66
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 139
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->h:Ljava/lang/String;

    if-eqz v2, :cond_74

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_75

    :cond_74
    const/4 v2, 0x0

    :goto_75
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 140
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->i:Ljava/lang/String;

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_84

    :cond_83
    const/4 v2, 0x0

    :goto_84
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 141
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->j:Lcom/xiaomi/accountsdk/guestaccount/data/e;

    if-eqz v2, :cond_91

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->j:Lcom/xiaomi/accountsdk/guestaccount/data/e;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/guestaccount/data/e;->hashCode()I

    move-result v1

    :cond_91
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 90
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "GuestAccount{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "userId=\'"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "cUserId=\'"

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, ", sid=\'"

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, ", serviceToken=\'"

    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, ", security=\'"

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, ", passToken=\'"

    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, ", callback=\'"

    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, ", slh=\'"

    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, ", ph=\'"

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, ", type="

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->j:Lcom/xiaomi/accountsdk/guestaccount/data/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 152
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "userid"

    .line 153
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->a:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cuserid"

    .line 154
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->b:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sid"

    .line 155
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->c:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "servicetoken"

    .line 156
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->d:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "security"

    .line 157
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->e:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "passtoken"

    .line 158
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->f:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "callback"

    .line 159
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->g:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "slh"

    .line 160
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->h:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ph"

    .line 161
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->i:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type"

    .line 162
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->j:Lcom/xiaomi/accountsdk/guestaccount/data/e;

    if-nez v1, :cond_4c

    const/4 v1, -0x1

    goto :goto_50

    :cond_4c
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->j:Lcom/xiaomi/accountsdk/guestaccount/data/e;

    iget v1, v1, Lcom/xiaomi/accountsdk/guestaccount/data/e;->c:I

    :goto_50
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
