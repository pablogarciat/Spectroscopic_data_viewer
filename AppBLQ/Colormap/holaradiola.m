function C = NewColormap(N)
% 

NPuntos = 20;
NewColormap = zeros(NPuntos*5,3);

VectorBlanco1 = linspace (1,1,NPuntos/2);
Vector1_1 = linspace (1,0.1,NPuntos);
Vector1_3 = linspace (0.1,1,NPuntos*2);
Vector1_4 = linspace (1,0.8,NPuntos);
Vector1_5 = linspace (0.8,0.8,NPuntos/2);

VectorBlanco2 = linspace (1,1,NPuntos/2);
Vector2_1 = linspace (1,0.2,NPuntos);
Vector2_3 = linspace (0.2,1,NPuntos*2);
Vector2_4 = linspace (1,0.2,NPuntos);
Vector2_5 = linspace (0.2,0.2,NPuntos/2);


 VectorBlanco3 = linspace (1,1,NPuntos/2);
 Vector3_1 = linspace (1,0.3,NPuntos);
 Vector3_3 = linspace (0.3,0,NPuntos*2);
 Vector3_4 = linspace (0,0,NPuntos);
 Vector3_5 = linspace (0,0,NPuntos/2);


 
 
NewColormap(:,1) = ([VectorBlanco1 Vector1_1  Vector1_3 Vector1_4  Vector1_5])';
NewColormap(:,2) = ([VectorBlanco2 Vector2_1  Vector2_3 Vector2_4  Vector2_5])';
NewColormap(:,3) = ([VectorBlanco3 Vector3_1  Vector3_3 Vector3_4  Vector3_5])';

P = size(NewColormap,1);

if nargin < 1
   N = P;
end

N = min(N,P);
C = interp1(1:P, NewColormap, linspace(1,P,N), 'linear');