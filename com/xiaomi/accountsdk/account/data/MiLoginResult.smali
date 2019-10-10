.class public Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "sts_error"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accountsdk/account/data/MiLoginResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field public static final i:I = 0x8

.field public static final j:I = 0x9

.field public static final k:I = 0xa

.field public static final l:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final m:I = 0xb

.field public static final n:I = 0xc

.field public static final o:I = 0xd

.field private static final z:Ljava/lang/String; = "has_pwd"


# instance fields
.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Lcom/xiaomi/accountsdk/account/data/h;

.field public final v:Ljava/lang/String;

.field public final w:I

.field public final x:Z

.field public y:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 91
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$1;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$1;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->p:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->q:Ljava/lang/String;

    .line 57
    const-class v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->r:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->s:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->t:Ljava/lang/String;

    .line 60
    const-class v0, Lcom/xiaomi/accountsdk/account/data/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/h;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->u:Lcom/xiaomi/accountsdk/account/data/h;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->v:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->w:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_50

    const-string v0, "has_pwd"

    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_51

    :cond_50
    const/4 v0, 0x1

    :goto_51
    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->x:Z

    if-eqz p1, :cond_5c

    const-string v0, "sts_error"

    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_5d

    :cond_5c
    const/4 p1, 0x0

    :goto_5d
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->y:Z

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)V
    .registers 3

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->a(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->p:Ljava/lang/String;

    .line 105
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->b(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->q:Ljava/lang/String;

    .line 106
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->c(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->r:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 107
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->d(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->s:Ljava/lang/String;

    .line 108
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->e(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->t:Ljava/lang/String;

    .line 109
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->f(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Lcom/xiaomi/accountsdk/account/data/h;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->u:Lcom/xiaomi/accountsdk/account/data/h;

    .line 110
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->g(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->v:Ljava/lang/String;

    .line 111
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->h(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->w:I

    .line 112
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->i(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->x:Z

    .line 113
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;->j(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->y:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;Lcom/xiaomi/accountsdk/account/data/MiLoginResult$1;)V
    .registers 3

    .line 7
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;-><init>(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 76
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->r:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 79
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->u:Lcom/xiaomi/accountsdk/account/data/h;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 82
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget p2, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->w:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "has_pwd"

    .line 86
    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->x:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "sts_error"

    .line 87
    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->y:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
