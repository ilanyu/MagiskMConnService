.class public Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;",
            ">;"
        }
    .end annotation
.end field

.field protected static final a:Ljava/lang/String; = "deviceId"

.field protected static final b:Ljava/lang/String; = "ticketToken"

.field protected static final c:Ljava/lang/String; = "metaLoginData"

.field protected static final d:Ljava/lang/String; = "returnStsUrl"

.field protected static final e:Ljava/lang/String; = "needProcessNotification"

.field protected static final f:Ljava/lang/String; = "hashedEnvFactors"

.field private static final s:Ljava/lang/String; = "activatorPhoneInfo"


# instance fields
.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Lcom/xiaomi/accountsdk/account/data/h;

.field public o:Z

.field public p:Z

.field public q:[Ljava/lang/String;

.field public r:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 188
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$1;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$1;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->g:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->h:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->i:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->j:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->k:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_65

    const-string v0, "deviceId"

    .line 154
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->l:Ljava/lang/String;

    const-string v0, "ticketToken"

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->m:Ljava/lang/String;

    const-string v0, "metaLoginData"

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/h;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->n:Lcom/xiaomi/accountsdk/account/data/h;

    const-string v0, "returnStsUrl"

    const/4 v1, 0x0

    .line 157
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->o:Z

    const-string v0, "needProcessNotification"

    const/4 v1, 0x1

    .line 158
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->p:Z

    const-string v0, "hashedEnvFactors"

    .line 159
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->q:[Ljava/lang/String;

    const-string v0, "activatorPhoneInfo"

    .line 160
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->r:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    :cond_65
    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)V
    .registers 3

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->a(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->g:Ljava/lang/String;

    .line 132
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->b(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->h:Ljava/lang/String;

    .line 133
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->c(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->i:Ljava/lang/String;

    .line 134
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->d(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->j:Ljava/lang/String;

    .line 135
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->e(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->k:Ljava/lang/String;

    .line 136
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->f(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->l:Ljava/lang/String;

    .line 137
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->g(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->m:Ljava/lang/String;

    .line 138
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->h(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Lcom/xiaomi/accountsdk/account/data/h;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->n:Lcom/xiaomi/accountsdk/account/data/h;

    .line 139
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->i(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->o:Z

    .line 140
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->j(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->p:Z

    .line 141
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->k(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->q:[Ljava/lang/String;

    .line 142
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->l(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->r:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$1;)V
    .registers 3

    .line 8
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;-><init>(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)V

    return-void
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_4
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->g:Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->h:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->i:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->j:Ljava/lang/String;

    .line 99
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->k:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->l:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->f(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->m:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->g(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->n:Lcom/xiaomi/accountsdk/account/data/h;

    .line 103
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->a(Lcom/xiaomi/accountsdk/account/data/h;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->o:Z

    .line 104
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->a(Z)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->p:Z

    .line 105
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->b(Z)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->q:[Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->a([Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->r:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    .line 107
    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->a(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 171
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "deviceId"

    .line 178
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->l:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ticketToken"

    .line 179
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->m:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "metaLoginData"

    .line 180
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->n:Lcom/xiaomi/accountsdk/account/data/h;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "returnStsUrl"

    .line 181
    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->o:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "needProcessNotification"

    .line 182
    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->p:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "hashedEnvFactors"

    .line 183
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->q:[Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "activatorPhoneInfo"

    .line 184
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->r:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 185
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
