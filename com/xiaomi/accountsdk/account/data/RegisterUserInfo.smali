.class public Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;,
        Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "register_pwd"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final p:Ljava/lang/String; = "register_status"

.field private static final q:Ljava/lang/String; = "user_id"

.field private static final r:Ljava/lang/String; = "user_name"

.field private static final s:Ljava/lang/String; = "avatar_address"

.field private static final t:Ljava/lang/String; = "ticket_token"

.field private static final u:Ljava/lang/String; = "phone"

.field private static final v:Ljava/lang/String; = "masked_user_id"

.field private static final w:Ljava/lang/String; = "has_pwd"

.field private static final x:Ljava/lang/String; = "bind_time"

.field private static final y:Ljava/lang/String; = "need_get_active_time"

.field private static final z:Ljava/lang/String; = "need_toast"


# instance fields
.field public final d:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Z

.field public final l:J

.field public final m:Z

.field public final n:Z

.field public final o:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 243
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$1;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$1;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->a(I)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->d:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    .line 72
    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->e:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->f:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->g:Ljava/lang/String;

    .line 75
    iput-object p5, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->h:Ljava/lang/String;

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->i:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->j:Ljava/lang/String;

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->k:Z

    const-wide/16 p2, -0x1

    .line 79
    iput-wide p2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->l:J

    .line 80
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->m:Z

    .line 81
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->n:Z

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->o:Z

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)V
    .registers 4

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->a(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->a(I)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->d:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    .line 87
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->b(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->e:Ljava/lang/String;

    .line 88
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->c(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->f:Ljava/lang/String;

    .line 89
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->d(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->g:Ljava/lang/String;

    .line 90
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->e(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->h:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->f(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->i:Ljava/lang/String;

    .line 92
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->g(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->j:Ljava/lang/String;

    .line 93
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->h(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->k:Z

    .line 94
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->i(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->l:J

    .line 95
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->j(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->m:Z

    .line 96
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->k(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->n:Z

    .line 97
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->l(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->o:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;-><init>(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)V

    return-void
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 126
    :cond_4
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->d:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    iget v1, v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->d:I

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;-><init>(I)V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->e:Ljava/lang/String;

    .line 127
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->f:Ljava/lang/String;

    .line 128
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->g:Ljava/lang/String;

    .line 129
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->h:Ljava/lang/String;

    .line 130
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->i:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->j:Ljava/lang/String;

    .line 132
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->f(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->k:Z

    .line 133
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->a(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->l:J

    .line 134
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->a(J)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->m:Z

    .line 135
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->b(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->n:Z

    .line 136
    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->c(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->d:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    iget v0, v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->d:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 227
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "register_status"

    .line 228
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->d:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    iget v1, v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->d:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "user_id"

    .line 229
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->e:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "user_name"

    .line 230
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->f:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "avatar_address"

    .line 231
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->g:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ticket_token"

    .line 232
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->h:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "phone"

    .line 233
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->i:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "masked_user_id"

    .line 234
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->j:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "has_pwd"

    .line 235
    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->k:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "bind_time"

    .line 236
    iget-wide v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->l:J

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "need_toast"

    .line 237
    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->n:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "need_get_active_time"

    .line 238
    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->m:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "register_pwd"

    .line 239
    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->o:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
